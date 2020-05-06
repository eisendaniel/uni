/**
 * NWEN 241 Programming Assignment 1
 * User name: luqing
 * Student ID: 300363602
 */


#include <stdio.h>
#include <string.h>
#include "editor.h"

 
 /**
 * Task 4.
 * Insert a charater in the editing buffer.
 * When a character is inserted, 
 * each of the original characters at this index until the end of buffer 
 * must be moved by one position to the right.
 *
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_insert Character to insert
 * @param pos Index where insertion should occur
 * @return 1 if the insertion occurred, otherwise 0
 */
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{
	if(editing_buflen == 0 || pos >= editing_buflen || pos < 0){ return 0; }

	if(pos == editing_buflen - 1){
		if(strlen(editing_buffer) < editing_buflen - 1){
			editing_buffer[editing_buflen - 1] = to_insert;
		    return 1;
		}else{
			return 0;
		}
		
	}

	if(pos < editing_buflen - 1){
		for(int i = editing_buflen - 1; i > pos; i--){
			editing_buffer[i] = editing_buffer[i - 1];
		}
		editing_buffer[pos] = to_insert;
		return 1;
	}
	return 0;
}


/**
 * Task 5.
 * Delete the first occurrence of the character in the editing buffer.
 * When a character is deleted at index pos, 
 * each of the original characters at index pos until the end of buffer 
 * must be moved by one position to the left. 
 * A null character (’\0’) is inserted at the end of the buffer.
 * 
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_delete Character to delete
 * @param offset Index to start searching for the character to delete
 * @return 1 if the deletion occurred, otherwise 0
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{
	if(editing_buflen == 0 || offset >= editing_buflen - 1){ return 0; }

	for(int i = offset; i < editing_buflen - 1; i++){
		if(editing_buffer[i] == to_delete){
			if(i == editing_buflen - 1){
				editing_buffer[i] = '\0';
				return 1;
			}

			for(int j = i; j < editing_buflen - 1; j++){
				editing_buffer[j] = editing_buffer[j + 1];
			}
			editing_buffer[editing_buflen - 1] = '\0';
			return 1;
		}
	}
    return 0;
}


/**
 * Task 6.
 * Check if editing_buffer includes str after index offset.
 * If yes, return the index of the first char of str in editing_buffer;
 * otherwise, return -1.
 */

int str_index_in_buffer(char editing_buffer[], int editing_buflen, const char *str, int offset)
{
	if(editing_buflen - offset <= strlen(str)){ return -1; }

	for(int i = offset; i < editing_buflen - 1; i++){
		if(editing_buffer[i] == *str){
			int count = 1;
			for(int j = 1; j < strlen(str); j++){
				if(editing_buffer[i + j] == *(str + j)){
					count++;
				}
			}
			if(count == strlen(str)){
				return i;
			}
		}
	}
    return -1;
}


/**
 * Task 6.
 * Replace the first occurrence of the string in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param str String to replace
 * @param replacement Replacement string
 * @param offset Index to start searching for the string
 * @return If the string replacement occurred, 
 *         the function should return the index corresponding the last letter of @str in @editing_buffer, 
 *         otherwise, it should return -1.
 */
int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset)
{
	if(editing_buflen == 0 || strlen(str) == 0 || offset >= editing_buflen - 1){ return -1; }

	int startIndex = str_index_in_buffer(editing_buffer, editing_buflen, str, offset);

	if(startIndex == -1){ return -1; }

    // when the characters in str equals those at the end of str
	if(startIndex + strlen(str) == editing_buflen - 1){
		if(strlen(replacement) == 0){
			editing_buffer[startIndex] = '\0';
			return startIndex;
		}
		if(strlen(str) > strlen(replacement)){
			for(int i = startIndex; i < startIndex + strlen(replacement); i++){
				editing_buffer[i] = *(replacement + i - startIndex);
			}
			editing_buffer[startIndex + strlen(replacement)] = '\0';
			return startIndex + strlen(replacement) - 1;
		}else{
			for(int i = startIndex; i < editing_buflen - 1; i++){
				editing_buffer[i] = *(replacement + i - startIndex);
			}
			return editing_buflen - 1;
		}
	}

	// splice replacement together with the chars after str
	int sizeOfRightPiece = strlen(replacement) + editing_buflen - (startIndex + strlen(str));
	char secondHalfBuffer[sizeOfRightPiece];
	int count0 = 0;

	if(strlen(replacement) > 0){
		for(int k = 0; k < strlen(replacement); k++){
			secondHalfBuffer[count0] = *(replacement + k);
			count0++;
		}
	}

	for(int m = startIndex + strlen(str); m < editing_buflen; m++){
		secondHalfBuffer[count0] = editing_buffer[m];
		count0++;
	}

	// add the new array of chars after those chars before the str that has been replaced
	if(startIndex + sizeOfRightPiece < editing_buflen){
		for(int n = 0; n < sizeOfRightPiece; n++){
			editing_buffer[startIndex + n] = secondHalfBuffer[n];
		}
		editing_buffer[startIndex + sizeOfRightPiece] = '\0';
		return startIndex + strlen(replacement) - 1;
	}else{
		for(int n = startIndex; n < editing_buflen - 1; n++){
			editing_buffer[n] = secondHalfBuffer[n - startIndex];
		}
		if(startIndex + strlen(replacement) < editing_buflen){
			return startIndex + strlen(replacement) - 1;
		}else{
			return editing_buflen - 1;
		}
	}
}


/**
 * Task 7.
 * Replace all occurrences of the string in the editing buffer.
 * When wrap is 0, the text is not wrapped.
 * When wrap is non-zero, the text must be wrapped.
 * @param rows Number of rows in viewing buffer
 * @param cols Numbber of columns in viewing buffer
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param wrap Whether wrapping is applied or not
 */
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap)
{
	if(rows == 0 || cols == 0 || strlen(editing_buffer) == 0 || editing_buflen == 0){return; }

    // initialise viewing_buffer[rows][cols]
	for(int row = 0; row < rows; row++){
		for(int col = 0; col < cols; col++){
			viewing_buffer[row][col] = '\0';
		}
	}

	int currentIndex = 0;
	for(int row = 0; row < rows; row++){

		for(int col = 0; col < cols - 1; col++){

			if(editing_buffer[currentIndex] == '\0'){return; }

			if(editing_buffer[currentIndex] != '\n'){
				viewing_buffer[row][col] = editing_buffer[currentIndex];
				currentIndex++;
			}else{               // go to next line
				currentIndex++;
				break;
			}
		}

		if(wrap == 0){
			if(strlen(viewing_buffer[row]) == (cols - 1)){
				for(int i = currentIndex; i < strlen(editing_buffer); i++){
					if(editing_buffer[i] == '\n'){
						currentIndex = i + 1;
						break;
					}
				}
			}
		}	
	}
}


