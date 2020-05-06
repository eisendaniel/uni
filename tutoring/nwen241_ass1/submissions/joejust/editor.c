/**
 * NWEN 241 Programming Assignment 1
 * editor.c File
 * 
 * Justin Joe 
 * 300470389
 * joejust
 * 
 * This file contains the prototype functions implemented for Tasks 4-7 for Part 2: Practical Programming. 
 * 
 */

#include <stdio.h>
#include <string.h>
#include "editor.h"

/**
 * Task 4.
 * Insert a charater in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_insert Character to insert
 * @param pos Index where insertion should occur
 * @return 1 if the insertion occurred, otherwise 0
 * gcc editor.c t4test.c -o t4test
 */
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos) {

    //check to see if pos is within boundaries of array
    if (pos >= editing_buflen || pos < 0) { return 0;}

    //shift elements to the right
    for (int i = editing_buflen - 1; i >= pos; i--) { 
        editing_buffer[i] = editing_buffer[i - 1];
    }

    //set last element to null terminator
    editing_buffer[editing_buflen - 1] = '\0'; 
    //insertion
    editing_buffer[pos] = to_insert;           

    return 1;
}

/**
 * Task 5.
 * Delete the first occurrence of the character in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_delete Character to delete
 * @param offset Index to start searching for the character to delete
 * @return 1 if the deletion occurred, otherwise 0
 * gcc editor.c t5test.c -o t5test
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset) {

    //checks to see if offset is within boundaries of array
    if (offset > editing_buflen || offset < 0) { return 0;}    

    for (int i = offset - 1; i < editing_buflen; i++) { 
        if (editing_buffer[i] == to_delete) {
            if (offset > i) { return 0;}
            //shift elements to the left, override elements to be deleted
            for (int j = i; j <= editing_buflen; j++) { 
                editing_buffer[j] = editing_buffer[j + 1];
            }
        } 
    }

    //set last element to null terminator
    editing_buffer[editing_buflen - 1] = '\0'; 
    return 1;
}


/**
 * Task 6.
 * Replace the first occurrence of the string in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param str String to replace
 * @param replacement Replacement string
 * @param offset Index to start searching for the string
 * @return If the string replacement occurred, the function should return the index corresponding the last letter of @str in @editing_buffer, otherwise, it should return -1.
 * gcc editor.c t6test.c -o t6test
 */
int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset) {

    //get the pointer of the start of the string to replace
    char *pointerToStr = strstr(editing_buffer, str);
    //index of pointer to the string to replace in the editing buffer
    int pos = pointerToStr - editing_buffer;

    //checks to see if offset is within boundaries and there exists a str
    if (offset >= editing_buflen || offset < 0 || strlen(str) == 0 || offset > pos) {  return -1;}

    //fufill condition of deletion if replacement is emptyss
    if (strlen(replacement) == 0) {
        for (int i = 0; i < strlen(replacement); i++) {
            editor_delete_char(editing_buffer, editing_buflen, replacement[i], offset);
        }
    }

    //replace the replacement string with null terminator (mimicing deletion)
    for (int i = pos; i < pos + strlen(str); i++) {
        editing_buffer[i] = '\0';
    }

    //move chars after str to the right condition
    if (strlen(replacement) >= strlen(str)) { 
        for (int i = 0; i < strlen(replacement); i++) {
            for (int j = editing_buflen - 1; j >= pos; j--) {
                if (editing_buffer[j] == '\0') {
                    editing_buffer[j] = editing_buffer[j - 1];
                }
            }
            editing_buffer[pos] = replacement[i];
            pos++;
            
        }
        
        if (pos > strlen(editing_buffer)) { return editing_buflen - 1;}

        return pos;
    }

    
    //move chars after str to the left condition
    else { 
        for (int i = 0; i < strlen(replacement); i++) {
            for (int j = i; j <= editing_buflen; j++) {
                if (editing_buffer[j] == '\0') {
                    editing_buffer[j] = editing_buffer[j + 1];
                }
            }
            editing_buffer[pos] = replacement[i];
            pos++;
        }
    
        if (pos > strlen(editing_buffer)) { return editing_buflen - 1;}

        return pos;
    }
        
    //set last element to null terminator
    editing_buffer[editing_buflen - 1] = '\0'; 
    return 0;
}


/**
 * Task 7.
 * Replace all occurrences of the string in the editing buffer.
 * @param rows Number of rows in viewing buffer
 * @param cols Numbber of columns in viewing buffer
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param wrap Whether wrapping is applied or not
 * gcc editor.c t7test.c -o t7test
 */
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap) {

    //set the whole 2d array to null terminators
    for (int row = 0; rows < rows; row++) {
        for (int col = 0; col < cols; col++) {
            viewing_buffer[row][col] = '\0'; 
        }
    } 

    char character;
    int row = 0;
    int col = 0;

    //loop through editing buffer, adjusting row and col positions in viewing buffer based on char
    for (int i = 0; i < editing_buflen; i++) { 
        character = editing_buffer[i];

        //last char in editing buffer                                            
        if (character == '\0') { return;}

        //when new line char is reached, go next row and skip this iteration
        if (character == '\n') { 
            col = 0;
            row++;
            continue;
        }
        
        //wrap condition
        if (wrap == 1 && (col == cols - 1)) { 
            col = 0; 
            row++;
        }
        
        //non-wrap condition, skip iteration beyond last col until we see a newline character
        if (col == cols - 1) { continue;}

        //add element in editing to viewer and navigate across cols
        viewing_buffer[row][col] = character; 
        col++;
    }
}




