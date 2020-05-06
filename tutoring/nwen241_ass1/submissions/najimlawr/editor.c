#include "editor.h"
#include <string.h>



int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){
	//creates a new array to store the moved chars
	char temp_array[editing_buflen-pos];
	
	//goes through every character after the pos in editing_buffer[] and adds it to temp_array[]
	for (int i = pos; i < editing_buflen; i++) {
		temp_array[i-pos] = editing_buffer[i];
	}
	
	//inserts the new character at pos
	editing_buffer[pos] = to_insert;
	
	//puts all the characters that would have needed to have been moved in their proper position
	for (int i = 0; i < editing_buflen-pos; i++) {
		editing_buffer[pos+i+1] = temp_array[i];
	}
	
	editing_buffer[editing_buflen] = '\0';

	//checks if the character insertion has been performed
	if (pos != editing_buflen && editing_buffer[pos] == to_insert) {return 1;}

	return 0;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
	int delete_check = 0;
	int check;

	//finds the position of the character to be deleted
	for (int i = offset; i < editing_buflen; i++) {
		if (editing_buffer[i] == to_delete) {
			check = i;
			delete_check = 1;
		}	
	}
	
	//moves all the characters across to "delete" the desired character
	if (delete_check != 0) {
		for (int i = check; i < editing_buflen; i++) {
			editing_buffer[i] = editing_buffer[i+1];
		}
	}

	editing_buffer[editing_buflen] = '\0';
	
	//returns the deletion flag, which will be 1 if the character to be deleted was found
	return delete_check;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
	int flag = -1;
	int move = strlen(str)-strlen(replacement);
	
	//finds the index of the beginning of the string to be replaced
	for (int i = offset; i < editing_buflen; i++) {
		if (editing_buffer[i] == str[0]) {
			flag = i;
		}	
	}
	
	if (flag != -1) {
		//create temp array for moving
		char temp[editing_buflen-flag];
		
		//add elements after the flag to the temp array
		for (int i = 0; i < editing_buflen-flag; i++) {
			temp[i] = editing_buffer[flag+i+1];
		}
		
		//place the elements in the temp array into their position
		for (int i = 0; i < editing_buflen-flag; i++) {
			editing_buffer[flag+i] = temp[i];
		}
		
		//inserts the replacement characters in their positions
		for (int i = 0; i < strlen(replacement); i++) {
			editing_buffer[flag+i] = replacement[i];
		}
	}
	
	editing_buffer[editing_buflen] = '\0';

	//returns -1 if nothing was replaced, returns the index of the final character in replacement if it was used to replace str
	if (flag == -1) {return flag;}
	else {return flag+strlen(replacement)-1;}
	
}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
	//sets every character in viewing_buffer[] to null
	for (int i = 0; i < rows; i++) {
			for (int j = 0; j < cols; j++) {
				viewing_buffer[i][j] = '\0';
			}
	}
	
	//initialising current row/col
	int row = 0;
	int col = 0;
	
	if (wrap == 0) {
		for (int i = 0; i < editing_buflen; i++) {
			if (editing_buffer[i] == '\0') {break;}
			if (editing_buffer[i] == '\n') {
				row++;
				col = 0;
			}
			//goes to the next row if it does not find a newline character before the row ends
			if ((col = (cols-1))) {
				//ignores all characters until it finds the newline character
				for (int j = i; j < editing_buflen; j++) {
					if (editing_buffer[j] == '\n') {
						row++;
						col = 0;
						viewing_buffer[row][col] = editing_buffer[j+1];
						col++;
					}
				}
			}
			else {
				viewing_buffer[row][col] = editing_buffer[i];
				col++;
			}
		}
	}
	
	else {
		for (int i = 0; i < editing_buflen; i++) {
			if (editing_buffer[i] == '\0') {break;}
			if (editing_buffer[i] == '\n') {
				row++;
				col = 0;
			}
			//goes to the next row if it does not find a newline character before the row ends
			if ((col = (cols-1))) {
				row++;
				col = 0;
				for (int j = i; j < editing_buflen; j++) {
					if (editing_buffer[j] == '\n') {
						row++;
						col = 0;
						viewing_buffer[row][col] = editing_buffer[j+1];
						col++;
					}
					//continues adding characters until it finds the newline character
					else {
						viewing_buffer[row][col] = editing_buffer[j];
						col++;
					}
				}
			}
			else {
				viewing_buffer[row][col] = editing_buffer[i];
				col++;
			}
		}
	}
}

