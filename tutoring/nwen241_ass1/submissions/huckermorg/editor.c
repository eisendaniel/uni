/**
 * NWEN 241 Programming Assignment 1
 * editor.h Header File
 *
 * This header file contains the function prototypes for Tasks 4-7.
 */

#include "editor.h"

#include<stdio.h>

#include<string.h>

/**
 * Task 4.
 * Insert a charater in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_insert Character to insert
 * @param pos Index where insertion should occur
 * @return 1 if the insertion occurred, otherwise 0
 */
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos) {

  if (pos < 0 || pos > editing_buflen - 1) //trying to insert at invalid index = not valid
    return 0;
  char tempC;
  char tempTempC;
  tempC = editing_buffer[pos];
  editing_buffer[pos] = to_insert; //insert the char
  for (int i = pos + 1; i < strlen(editing_buffer); i++) { //move each char after insertion up one index
    tempTempC = editing_buffer[i];
    editing_buffer[i] = tempC;
    tempC = tempTempC;

  }
  editing_buffer[editing_buflen - 2] = tempC; //add final value still left in tempC after for-loop

  return 1; //valid insertion
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
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset) {
  for (int c = offset; c < editing_buflen - 1; c++) { //search for to_delete
    if (editing_buffer[c] == to_delete) {
      editing_buffer[c] = editing_buffer[c + 1]; //once found move each char down one index
      for (c; c < editing_buflen - 1; c++) {
        editing_buffer[c] = editing_buffer[c + 1];
      }
      return 1; //valid deletion
    }
  }
  return 0; //invalid deletion
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
int editor_replace_str(char editing_buffer[], int editing_buflen,
  const char * str,
    const char * replacement, int offset) {
  if (str[0] == '\0')
    return -1;
  int searchStrLen = strlen(str);
  for (int c = offset; c < editing_buflen; c++) {
    if (editing_buffer[c] == str[0]) { //Check if the first char is found
      int found = 1;
      for (int i = 1; i < searchStrLen - 1; i++) { // see if the following char are found
        if (editing_buffer[c + i] != str[i]) {
          found = 0;
          break;
        }
      }
      if (found == 1) { //str has been found
        for (int k = c; k < c + searchStrLen; k++) {
          editing_buffer[k] = editing_buffer[k + searchStrLen]; //replace all chars in the str found indexes
        }
        int repLen = strlen(replacement);
        for (int k = c; k < c + repLen; k++) {
          if (k > editing_buflen - 1)
            return -1;
          char tempC;
          char tempTempC;
          tempC = editing_buffer[k];
          editing_buffer[k] = replacement[k - c]; //insert the char
          for (int t = k + 1; t < editing_buflen; t++) {
            tempTempC = editing_buffer[t]; //get a temp copy of current index
            editing_buffer[t] = tempC; //current index is old temp
            tempC = tempTempC;
          }
          editing_buffer[editing_buflen - 2] = tempC;
        }
        return c + repLen - 1;
      }
    }
  }
  return -1;
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
void editor_view(int rows, int cols, char viewing_buffer[rows][cols],
  const char editing_buffer[], int editing_buflen, int wrap) {

  for (int ri = 0; ri < rows; ri++) { //set all to \0
    for (int ci = 0; ci < cols; ci++) {
      viewing_buffer[ri][ci] = '\0';
    }
  }
  int r = 0;
  int c = 0;
  for (int i = 0; i < editing_buflen; i++) {
    char _char = editing_buffer[i];
    if (_char == '\n') {
      r++;
      c = 0;
      continue;
    }
    if (_char == '\0')
      break;
    if (wrap && c >= cols - 1) {
      r++;
      c = 0;
    }
    if (c >= cols - 1)
      continue;

    else if (r >= rows) {
      break;
    }
    viewing_buffer[r][c] = _char;
    c++;
  }
}