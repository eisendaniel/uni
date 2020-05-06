#include <string.h>
#include <stdio.h>
#include <stdbool.h>

// This works by creating a new char array, with the same length. Then adding the characters
// from the original until it gets to pos. Once at pos, it inserts the new character. Then
// continues by moving the characters in the original buffer.
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{
    // Check if passed valid arguments
    if (pos >= editing_buflen || editing_buflen == 0) { return 0; }

    char return_buffer[editing_buflen];
    
    if (pos != 0)
    {
        for (int i = 0; i < pos; i++)
        {
            return_buffer[i] = editing_buffer[i];
        }
    }

    return_buffer[pos] = to_insert;

    for (int i = pos+1; i < editing_buflen; i++)
    {
        return_buffer[i] = editing_buffer[i-1];
    }

    strcpy(editing_buffer, return_buffer);
    return 1;
}

// editor_delelte_char starts copying the buffer across. After getting to the offset, it will also start checking the characters.
// If they match to_delete then, it will delete the character and move on
int editor_delete_char (char editing_buffer[], int editing_buflen, char to_delete, int offset)
{
    // Check if passed valid arguments
    if (offset >= editing_buflen || editing_buflen == 0) { return 0; }

    char return_buffer[editing_buflen];
    int r = 0;
    
    int i = 0;
    while (i != offset)
    {
        return_buffer[i] = editing_buffer[i];

        i++;
    }

    for (; i < editing_buflen; i++)
    {
        if (editing_buffer[i] == to_delete) { i++; r = 1; }

        return_buffer[i] = editing_buffer[i];
    }

    strcpy(editing_buffer, return_buffer);
    return r;
}

int editor_replace_str (char editing_buffer[], int editing_bufflen, const char *str, const char *replacement, int offset)
{
    int r = -1;
    char return_buffer[editing_bufflen];
    
    int i = 0;
    while (i != offset)
    {
        return_buffer[i] = editing_buffer[i];

        i++;
    }

    

    strcpy(editing_buffer, return_buffer);
    return r;
}