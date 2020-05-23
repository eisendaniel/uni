#include "editor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Task 4
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{

    if (pos < 0 || pos >= editing_buflen) { // checks for the positions in the array
        return 0;
    }

    for (int i = editing_buflen - 1; i > pos; i--) // go through the length of array from the last element
        editing_buffer[i] = editing_buffer[i - 1];

    editing_buffer[pos] = to_insert; //substitute the character into the appropriate index.

    return 1;
}

//Task 5
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{

    if (offset < 0 || offset >= editing_buflen) { // prevent the offset from going outside of the array
        return 0;
    }
    for (int i = offset; i < editing_buflen; i++) { // check for the position in the editing_buffer and assign it to delete
        if (editing_buffer[i] == to_delete) {
            for (int j = i; j < editing_buflen; j++)
                editing_buffer[j] = editing_buffer[j + 1]; // then move the array to the next index.

            return 1;
        }
    }

    return 0;
}

//Task 6
int editor_replace_str(char editing_buffer[], int editing_buflen, const char* str, const char* replacement, int offset)
{

    size_t length_string = strlen(str); // size of the string length
    size_t length_replace = strlen(replacement); //size of the string replacement
    size_t difference_lenght = length_string > length_replace ? length_string - length_replace : length_replace - length_string; // get the differences

    if (offset >= editing_buflen || offset < 0 || length_string == 0 || offset + length_string >= editing_buflen)
        return -1;

    for (int i = offset; i < editing_buflen; i++) {
        unsigned long k;
        //check through the editing_buffer to find the matching character and the move to the next index

        for (k = 0; k < length_string; k++)
            if (editing_buffer[i + k] != str[k])
                break;

        //keep check if the character did not matched
        if (k < length_string)
            continue;

        if (length_string < length_replace) {
            for (k = editing_buflen - 1; k > i + length_string; k--) // move the array to the right
                editing_buffer[k] = editing_buffer[k - difference_lenght];
        } else if (length_string > length_replace) { //move the array to the left
            for (k = i; k < editing_buflen; k++)
                editing_buffer[k] = editing_buffer[k + difference_lenght];
        }
        // make sure that the character is within the array
        // Then insert the substitute character.
        for (k = 0; k < length_replace && i + k < editing_buflen; k++)
            editing_buffer[i + k] = replacement[k];

        // The last element of the array will be return
        return i + k - 1;
    }

    return -1;
}

//Task 7
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap)
{

    int whole_row = 0;
    int whole_col = 0;
    int index_array = 0;
    int r, c;
    char* p[rows];
    int current_row = 0;
    int current_col = 0;

    for (int whole_row = 0; whole_row < rows; whole_row++) { //check through the entire viewing_buffer
        p[whole_row] = (char*)viewing_buffer + cols * whole_row; //use null pointer line to the row
        for (int whole_col = 0; whole_col < cols; whole_col++) {
            p[whole_row][whole_col] = '\0';
        }
    }
    for (current_row = 0; current_row < rows; current_row++) { //check through the whole viewing_buffer array
        p[current_row] = (char*)viewing_buffer + cols * current_row; // used pointer to for the current_row
        for (current_col = 0; current_col < cols; current_col++) {

            // make sure that the index is over the editing buffer length
            //if yes, just return it , then set current_col = 0

            if (index_array >= editing_buflen) {

                // printf("%s\n", "Out of the editing buffer");
                return;
            }
            if (editing_buffer[index_array] == '\n') { // if the element find \n
                index_array++; //   then keep moving to the next element
                while (current_col < cols) { // ****Put \0 to the rest of the array
                    p[current_row][current_col] = '\0';
                    current_col++;
                }
                current_col = 0; //change current_col to the start
                current_row++; //go to next row
            }
            if (index_array < editing_buflen) {
                if (current_row < rows) {
                    if (current_col < cols - 1) { // put minus 1 value to the  editing buffer to access viewing buffer
                        // printf("%d\n",current_col );
                        // printf("%d\n",cols);
                        p[current_row][current_col] = editing_buffer[index_array];
                        index_array++; //  increase the index
                    }
                }
            }
            if (current_col == cols - 1) { // when reached the second last element then do the wrap
                if (wrap != 0) { //if no wrap
                    p[current_row][current_col] = '\0'; // setting \0 to the last element

                } else { //  doing wrapping
                    while (editing_buffer[index_array] != '\n') {
                        index_array++; // editing buffer use wrap to do wrapping
                    }
                }
            }
        }
    }
    return;
}
