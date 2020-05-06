// Carlo Flores 300439425
// 		Task 4
#include "editor.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

int editor_insert_char(char editing_buffer[], int editing_buflen,
		char to_insert, int pos)
{
	// Checks if user-inputted position is below buffer length and above 0.
	if (pos <= editing_buflen-1 && pos >= 0) {
		// For-loop working backwards to change every element to
		// previous element, until user-inputted position is reached.
		for (int i=editing_buflen-1; i > pos; --i) {
			editing_buffer[i] = editing_buffer[i-1];
		}
		// Sets position as insert (position is currently the same as
		// the next element index), and outputs success.
		editing_buffer[pos] = to_insert;
		printf("\nAt position: %d", pos);
		printf(": Character is %c\n",editing_buffer[pos]);
		printf("%s\n", editing_buffer);
		return 1;
	}
	// If user-inputted offset is above buffer length or below 0.	
	else {
		printf("\nFailed: Array position out of bounds\n");
		return 0;
	}
		
}

int editor_delete_char(char editing_buffer[], int editing_buflen,
		char to_delete, int offset)
{
	// Checks if user-inputted offset is below buffer length and above 0. 
	if (offset <= editing_buflen-1 && offset >= 0) {
		// Initializes a boolean and int for whether / where the char
		// is found and deleted.
		bool found = false;
		int foundIndex;
		// For-loop working forwards from the index offset.
		for (int i = offset; i <= editing_buflen-1; i++) {
			// First check: If char matches the index, and this
			// is the first match, set found to true.
			if (editing_buffer[i]==to_delete) {
				if (!found) {
					foundIndex = i;
					found = true;
				}
			// If found has been changed to true, change value to
			// next in index.
			}
			if (found) {
				editing_buffer[i] = editing_buffer[i+1];
			}
		}
		// After iteration, if matching char is found, delete and
		// output success. Manually set final value as null.
		if (found) {
			editing_buffer[editing_buflen-1] = '\0';
			printf("\nDeleted character: %c",to_delete);
			printf(": At index: %d\n",foundIndex);;
			printf("%s\n", editing_buffer);
			return 1;
		}
		// After iteration, if matching char isn't found, output
		// failure and return 0.
		else {
			printf("\nCould not find: %c", to_delete);
			printf(" after index: %d\n", offset);
			return 0;
		}
	}
	// If user-inputted offset is above buffer length or below 0.
	else {
		printf("\nFailed: Array offset out of bounds\n");
		return 0;
	}
}

int editor_replace_str(char editing_buffer[], int editing_buflen,
		const char *str, const char *replacement,
		int offset)
{
	// Checks if user-inputted offset is below buffer length and above 0. 
	if (offset+strlen(str) < editing_buflen && offset >= 0 && str != NULL) {
		// Used to count the amount of matchingChars. Once it matches length of char*(i.e. Specified
		// match char* is exactly found), exactFound is true and performs replacement code.
		int matchingChars;
		bool exactFound = false;
		int foundInt;
		// Iterates through offset to find first matching letter.
		for (int i = offset; i <= editing_buflen-1; i++) {
			if (editing_buffer[i] == str[0]) {
				// If matching letter is found, peforms further iteration based on length of
				// char*. If next subsequent letters are also equal until exact match is
				// found, exactFound is set to true. Else resets matchingChars and
				// continues to iterate through editing_buffer
				for (int j = 0; j <= strlen(str)-1; j++) {
					if (str[j] == editing_buffer[i+j]) {
						matchingChars = matchingChars+1;
					}
					else {
						exactFound = false;
						matchingChars = 0;
						break;
					}
					if (matchingChars == strlen(str)) {
						exactFound = true;
						break;
					}
				}

				// If the exact str is found; Begins replacement.
				if (exactFound) {
					int diff = strlen(str) - strlen(replacement);
	
					// Only when str's length is equal size to replacement.
					if (diff == 0) {
						// For loop to replace str chars with matching replacement
						for (int j = 0; j < strlen(str); j++) {
							editing_buffer[i+j] = replacement[j];
						}
					}
	
					// Only when str is larger than replacement.
					else if (diff > 0) {
						// Nested for-loop to move values to the left, from the
						// end up until the matching str. Repeats as many times
						// as difference.
						for (int j = 0; j < diff; j++) { 
							for (int k = i; k < editing_buflen-1; k++) {
								editing_buffer[k] = editing_buffer[k+1];
							}
						}
						// For loop to replace str chars with replacement/null
						for (int l = 0; l < strlen(replacement); l++) {
							editing_buffer[i+l] = replacement[l];
						}
						// For loop to force the duplicated/moved values to be null.
						// Repeats as many times as difference.
						for (int dif=diff; dif > 0; dif--) {
							editing_buffer[editing_buflen-dif] = '\0';
						}
					}
	
					// Only if replacement is larger than str.
					else if (diff < 0) {
						// Sets difference as absolute value
						diff = abs(diff);
						// Nested for-loop to move values to the right, from the
						// matching str up until the end index, minus difference.
						for (int j = 0; j < diff; j++) { 
							for (int k = editing_buflen-1; k > i; k--) {
								editing_buffer[k] = editing_buffer[k-1];
							}
						}
						// For loop to replace str chars with replacement/null					
						for (int l = 0; l < strlen(replacement); l++) {
							editing_buffer[i+l] = replacement[l];
						}
					}
				// Final output.
				foundInt = i+strlen(replacement)-1;
				printf("\nReplaced characters '%s",str);
				printf("' with characters '%s", replacement);
				printf("': between indexes '%d",i);
				printf("' and '%d'\n", i+strlen(replacement)-1);
				printf("%s\n", editing_buffer);
				return foundInt;
				}
			}
		}
		// Output if no matching str to replace is found.
		if (!exactFound) {
			printf("\nCould not find characters '%s' in buffer after offset.\n",str);
			return -1;
		}
	}
	// Error output if inputted string is null.
	else if (str == NULL){
		printf("\nUser-submitted String to replace is empty\n");
		return -1;
	}
	// If user-inputted offset+replacement size is above buffer length or below 0.	
	else {
		printf("\nReplacement+Offset Index is out of bounds\n");
		return editing_buflen-1;
	}
}

void editor_view(int rows, int cols,
		char viewing_buffer[rows][cols],
		const char editing_buffer[],
		int editing_buflen, int wrap)
{
	

}

// Code I used to compile with GBD and test and debug my functions. Will be commented
// out if completed.
//int main(void)
//{
//	int editing_buflen = 16;
//	char editing_buffer[] = "Hello, World!\0\0\0";
//	int r = editor_insert_char(editing_buffer, editing_buflen, 's', 12);
//
//	char editing_buffer2[] = "Hello, World!\0\0\0";
//	int t = editor_delete_char(editing_buffer2, 16, 'o', 6);
//
//	char editing_buffer3[] = "Hello, World!\0\0\0";
//	int u = editor_replace_str(editing_buffer3, 16, "World!", "there", 0);
//
	// Currently, Challenge is not attempted.
//	int editing_buflen2 = 48;
//	char editing_buffer4[] = "The quick brown\n fox jumps over\n\n the lazy dog\0\0\0\0";
//	int row = 8;
//	int col = 11;
//	char viewing_buffer[row][col];
//	editor_view(8,11, viewing_buffer, editing_buffer, editing_buflen2, 0); 
//}
