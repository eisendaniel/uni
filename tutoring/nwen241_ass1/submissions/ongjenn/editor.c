#include <stdio.h>
#include <string.h>
#include "editor.h"

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{
    if (pos >= editing_buflen || pos < 0)
        return 0;

    // copying string
    char buffer_copy[editing_buflen];
    strcpy(buffer_copy, editing_buffer);

    for (int i = 0; i < pos - 1; i++)
        editing_buffer[i] = buffer_copy[i];

    editing_buffer[pos] = to_insert;
    for (int i = pos + 1; i < editing_buflen; i++)
        editing_buffer[i] = buffer_copy[i - 1];

    // make sure last character is always \0
    editing_buffer[editing_buflen - 1] = '\0';
    return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{
    if (offset > editing_buflen - 1)
        return 0;

    if (offset < 0)
        offset = 0;

    // finding character and position of it
    int char_pos = -1;
    for (int i = offset; i < editing_buflen; i++)
    {
        if (editing_buffer[i] == to_delete)
        {
            char_pos = i;
            break;
        }
    }

    if (char_pos == -1) // character not found
        return 0;

    // copying string
    char buffer_copy[editing_buflen];
    strcpy(buffer_copy, editing_buffer);

    // characters are the same until the char to_delete
    for (int i = 0; i < char_pos; i++)
        editing_buffer[i] = buffer_copy[i];

    for (int i = char_pos + 1; i < editing_buflen; i++)
        editing_buffer[i - 1] = buffer_copy[i];

    // setting last char to '\0'
    editing_buffer[editing_buflen - 1] = '\0';

    return 1;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset)
{
    // str is empty
    if (strlen(str) == 0)
        return -1;

    char new_buffer[editing_buflen];

    int delete_start = -1;
    int delete_end = -1; // is the index after the last character
    int str_index = 0;   // current index in string to search for
    int matching = 0;    // 0 means means no match, 1 means match

    if (offset > editing_buflen - 1)
        return -1;

    if (offset < 0)
        offset = 0;

    // i is the index of editing_buffer, j is the index of *str
    for (int i = offset; i < editing_buflen; i++)
    {
        if (matching && (str_index == (strlen(str) - 1)))
        {
            // found a matching string
            delete_end = i + 1;
            break;
        }
        if (editing_buffer[i] == str[str_index])
        {

            matching = 1;
            if (delete_start == -1)
                delete_start = i;

            str_index++;
        }
        else
        {
            matching = 0;
            delete_start = -1;
            str_index = 0;
        }
    }

    // did not find a match for the full *str
    if (str_index != (strlen(str) - 1))
        return -1;

    // match found: begin replacing
    for (int i = 0; i < delete_start; i++)
        new_buffer[i] = editing_buffer[i];

    // if replacement is not empty
    if (strlen(replacement) != 0)
    {
        int end_of_replace = delete_start + strlen(replacement); // the index after the last char of the replacement

        // i is the index of editing_buffer, j is the index of replacement
        for (int i = delete_start, j = 0; j < strlen(replacement); i++, j++)
        {
            if (i >= (editing_buflen - 1))
            {
                // trying to add text past length limit of editing_buffer
                new_buffer[editing_buflen - 1] = '\0';
                strcpy(editing_buffer, new_buffer);
                return (editing_buflen - 1);
            }
            new_buffer[i] = replacement[j];
        }

        // Replacement successful. Now insert rest of the original string
        for (int i = end_of_replace, j = delete_end; i < editing_buflen; i++, j++)
            new_buffer[i] = editing_buffer[j];

        new_buffer[editing_buflen - 1] = '\0';
        strcpy(editing_buffer, new_buffer);
        return end_of_replace - 1;
    }

    // Delete the str from editing_buffer
    else
    {
        for (int i = delete_start, j = delete_end; i < editing_buflen; i++, j++)
        {
            if (j >= editing_buflen) // no more characters left to insert
                new_buffer[i] = '\0';
            else
                new_buffer[i] = editing_buffer[j];
        }

        // setting last char to '\0'
        new_buffer[editing_buflen - 1] = '\0';
        strcpy(editing_buffer, new_buffer);

        return delete_start;
    }
}

int get_newline_index(const char buffer[], int buflen, int current_index);

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap)
{
    // Sets every character in viewing_buffer to null. Note this is unnecessary as there is
    // already a reset_viewing_buffer function in the test files.
    for (int row = 0; row < rows; row++)
        for (int col = 0; col < cols; col++)
            viewing_buffer[row][col] = '\0';

    int current_index = 0; // current index of the editing_buffer array
    int new_line = 0;      // if 1, it means copy to a new line (increment row)

    for (int row = 0; row < rows; row++)
    {
        new_line = 0;

        // Copying contents of editing_buffer into viewing_buffer, leaving the last column empty
        for (int col = 0; col < cols - 1; col++)
        {
            if (editing_buffer[current_index] == '\n')
            {
                current_index++;
                new_line = 1;
                break;
            }
            viewing_buffer[row][col] = editing_buffer[current_index];
            current_index++;
            if (current_index == editing_buflen)
                break;
        }

        if (current_index == editing_buflen)
            break;

        // Upon reaching the end of the row, if no newline character was found and wrap is 0,
        // then search the next new line character, discarding all chars leading up to it.
        if (!wrap && !new_line)
        {
            current_index = get_newline_index(editing_buffer, editing_buflen, current_index);

            if (current_index == -1)
                // if no new line character is found, stop copying.
                break;

            // continue copying from editing_buffer from the index after the found newline character
            current_index++;
        }
    }
}

/** Finds the index of the next '\n' character. Returns -1 if one is not found */
int get_newline_index(const char buffer[], int buflen, int current_index)
{
    for (int i = current_index; i < buflen; i++)
        if (buffer[i] == '\n')
            return i;

    return -1;
}