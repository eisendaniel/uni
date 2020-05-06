/** Ivan Panaiotov-Troev
Student #: 300456276
NWEN 241 - Assignment 1 */
 


#include <stdio.h>
#include <string.h>

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{

	/* Starting from the second to last index of the array
	and ending at pos, moves each character forward one index. */
	
	for (int i = editing_buflen - 2; i >= pos; --i) {
		editing_buffer[i + 1] = editing_buffer[i];
	}

	/* Inserts the new character to the position specified */		
	
	editing_buffer[pos]	= to_insert;
		
	/* Returns 1 if the character has been inserted within 
	the bounds of the array, and ensures the last index element
	is the null terminator */
	
	if (editing_buffer[pos] == to_insert && editing_buflen > pos) {
		editing_buffer[editing_buflen - 1] = '\0';
		return 1;
	}
		
	return 0;
}


int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{

	/* Starting from the offset, looks for the first matching character to be deleted and 
	saves its index. If there is a matching character, assigns 1 to deleted_status. */
	
	int index_deleted;
	int deleted_status;

	for (int i = offset; i < editing_buflen; ++i) {
		
		if (editing_buffer[i] == to_delete) {			
			index_deleted = i;
			deleted_status = 1;
			break;
		}
	}

	/* From the index to be deleted until end of array, goes forward 1 index and transfers element to 
	previous index. */
	
	if (deleted_status == 1) {
		
		for (int j = index_deleted; j < editing_buflen; ++j) {
			
			editing_buffer[j] = editing_buffer[j +1]; 
		}
	editing_buffer[editing_buflen - 1] = '\0';
	return 1;
	}

	return 0;
}


int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement,
	int offset)
{

	/* Searches the buffer starting from offset for the passed string str and stores the address of the first character of the string as a pointer. If 
	the pointer is empty, the passed string wasn't found and the function terminates */

	char *pointer = strstr(editing_buffer + offset, str);
	
	if (pointer == NULL) {
		return -1;
	}

	/* Calculates the size of the string str and replacement string. Saves the index of the first and last characters of the string str */

	int string_size = strlen(str);
	int repstring_size = strlen(replacement);
	int string_difference = string_size - repstring_size;
	
	int starting_index = pointer - editing_buffer;
	int ending_index = starting_index + string_size;
	
	

	/* If string str and replacement string are the same length, directly replaces string str with the replacement string without sorting the array */
	
	if (string_difference == 0){
		int count = 0; 
		for (int h = starting_index; h < starting_index + repstring_size; ++h) {
			
			editing_buffer[h] = replacement[count]; 
			count++;
		}
			return starting_index + repstring_size -1;
	}

	/* If string difference is a positive number, the replacement string is smaller than the searched string and all
	characters after the replacement string are moved to the left */
	
	if (string_difference > 0) {

		for (int i = starting_index + repstring_size; i < editing_buflen - 1; ++i) {
	
			editing_buffer[i] = editing_buffer[i+1];
						
		}
		
		int count = 0; 
		for (int j = starting_index; j < starting_index + repstring_size; ++j) {
			
			editing_buffer[j] = replacement[count]; 
			count++;
		}

		return starting_index + repstring_size -1;

		
	}

	/*If string difference is a negative number, the replacement string is larger than the searched string and all characters after the 
	searched string are moved to the right, after which the replacement string is inserted  */
	
	if (string_difference < 0) {

		for (int k = editing_buflen -1; k > ending_index; k--) {
			
			editing_buffer[k] = editing_buffer[k-1];
		}
		
		int count = 0;
		for (int l = starting_index; l < starting_index + repstring_size; ++l) {

		editing_buffer[l] = replacement[count];
		count++;
		}

		return starting_index + repstring_size -1;
	
	}


}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen,
	int wrap)
{
	

	/* Sets all characters in the viewing buffer to the null character */
	
	for (int i = 0; i < rows - 1; ++i) {
		
		for (int j = 0; j < cols - 1; ++j) {
			viewing_buffer[i][j] = '\0';
		}

	}

	/* Copies the contents of the editing buffer to the viewing buffer, checking for newline and null characters */

	int edbuf_pos = 0;
	int viewbuf_pos = 0;
	int null_terminator = 0; // Remembers if a null character has been encountered
	
	for (int k = 0; k < rows; ++k) {

		if (null_terminator == 1) {
			break;
		}			
		
		for (int l = 0; l < cols; ++l) {
							
			if (editing_buffer[edbuf_pos] == '\0') {
				null_terminator = 1;
				break;
			}
						
			if (editing_buffer[edbuf_pos] == '\n') {
				++edbuf_pos;
				break;
			}

			if (wrap == 0) {
				

			}

			viewing_buffer[k][l] = editing_buffer[edbuf_pos];
			++edbuf_pos;			
		}

	}

}







