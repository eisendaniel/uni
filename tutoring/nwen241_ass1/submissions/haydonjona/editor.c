#include <stdio.h>
#include <string.h>

/**
 * Task 4.
 * Insert a character in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_insert Character to insert
 * @param pos Index where insertion should occur
 * @return 1 if the insertion occurred, otherwise 0
 */
 int editor_insert_char (char editing_buffer[], int editing_buflen, char to_insert, int pos) {
	if (pos > editing_buflen - 1) return 0;                //pos is greater than the editing buffer then exit
	char new_editing_buffer[editing_buflen];               //create revised array
	for (int i = 0; i < pos; i++) new_editing_buffer[i] = editing_buffer[i]; //insert char in original array up to index
    
	new_editing_buffer[pos] = to_insert;                   //insert the character
	for (int i = pos + 1; i < editing_buflen; i++) new_editing_buffer[i] = editing_buffer[i - 1]; //insert the remaining characters in original array displaced by one
	
	new_editing_buffer[editing_buflen] = '\0';             //ensure the last char is always '\0'
	strcpy (editing_buffer, new_editing_buffer);           //copy revised string to the original
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
 */
int editor_delete_char (char editing_buffer[], int editing_buflen, char to_delete, int offset) {
    for (int i = offset; i < editing_buflen; i++) {         //search for char from offset
        if (editing_buffer[i] == to_delete) {               //if character identified
            for (int j = i; j < editing_buflen - 1; j++) editing_buffer[j] = editing_buffer[j + 1]; //move all characters to right one space left (overwriting remove char)
            
            editing_buffer[editing_buflen - 1] = '\0';      //ensure last char is '\0'
            return 1;                                       //exit successful removal
        }
    }
    
    return 0;                                               //no character to delete so exit unsuccessful removal
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
 */
int editor_replace_str (char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset) {
    char new_editing_buffer[editing_buflen];                //create new replacement array
    for (int i = 0; i < editing_buflen; i++) {              //loop through editing_buffer from offset
        if (i >= offset) {                                  //search will not kick in until offset is reached
            for (int j = 0; j < strlen (str); j++) {        //nested loop searches the chars and identifies if they are the start of str
                if (editing_buffer[i + j] != str[j]) break; //if the char is not a part of str, leave this loop (i.e. stop the search)
                else if (j == strlen (str) - 1) {           //if string is identified, overwrite with replacement
                    for (int k = 0; k < strlen (replacement); k++) { //nested loop overwrites str with replacement
                        if (i + k == editing_buflen) break; //if reach end of array terminate the function, there are no more free spaces to write to
                        new_editing_buffer[i + k] = replacement[k]; //insert the replacement string
                    }
                    
                    for (int k = i; k + strlen (replacement) < editing_buflen; k++) new_editing_buffer[k + strlen (replacement)] = editing_buffer[k + strlen (str)];
                    //fill remaining array with the chars from original from where str left off
                    new_editing_buffer[editing_buflen - 1] = '\0'; //always check that last char is '\0'
                    strcpy (editing_buffer, new_editing_buffer); //replace original array with new array
                    return i + strlen (replacement) - 1;    //replacement done so exit successfully (with last replaced index)
                }
            }
            
        }
        new_editing_buffer[i] = editing_buffer[i];          //if not encountered str yet then copy char to array and then repeat loop for next char
    }
    
    return -1;                                              //loop exited with no replacement done so exit unsuccessfully
}

/**
 * Task 7.
 * Replace all occurrences of the string in the editing buffer.
 * @param rows Number of rows in viewing buffer
 * @param cols Numbber of columns in viewing buffer
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param wrap Whether wrapping is applied or not
 */
void editor_view (int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap) {
    for (int x = 0; x < cols; x++) {                        //iterate through rows (x is used instead of i as this is my preferred when dealing with 2d arrays)
        for (int y = 0; y < rows; y++) {                    //iterate through columns
            viewing_buffer[y][x] = '\0';                    //reset to null
        }
        
    }
    //2d array is now reset
    int character = 0;                                      //variable for keeping track of characters in row
    int line = 0;                                           //variable for keeping track of rows
    for (int i = 0; i < editing_buflen; i++) {               //iterate through editing_bufflen
        if (editing_buffer[i] == '\0') return;              //if null found, exit regardless of whats left
        else if (editing_buffer[i] == '\n') {               //otherwise if a newline character is found
            character = 0;                                  //reset character to 0
            line++;                                         //go to next line
        } else if (line != rows) {                          //otherwise if we have not exceeded lines allowed
            if (character < cols - 1) {                     //if we have not reached our allowed characters yet
                viewing_buffer[line][character] = editing_buffer[i]; //assign character to 2d array
                character++;                                //increment one space
            } else {                                        //otherwise (in case of no wrapping, all chars are dropped until newline or terminating char is given)
                if (wrap != 0) {                            //if wrapping allowed
                    character = 0;                          //reset character to 0
                    line++;                                 //go to next line
                    viewing_buffer[line][character] = editing_buffer[i]; //assign character to 2d array
                    character++;                            //increment one space
                }
            }
        } else return;                                      //otherwise quit (if this is reached it implies that we reached too many lines)
    }
    
}
            
                
            
