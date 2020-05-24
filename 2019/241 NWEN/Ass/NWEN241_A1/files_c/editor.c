/**
 * editor.c
 *
 * You must implement the functions in editor.h in this file.
 * Consult the assignment handout for the detailed specifications of each of the functions.
 *
 * Student ID: 300447549
 * Name: Daniel Eisen
 */

#include <stdio.h>
#include <string.h>
#include "editor.h"

char editing_buffer[EDITING_BUFLEN];



/**
 * insert char functions
 *
 * Places the desired char in the disired position
 * moving all chars to the right down 1 place
 * cutting off the buffer at its preset size
*/
int editor_insert_char(char *editing_buffer, char to_insert, int pos)
{
	// check if pos is a valid index
        if (pos < 0 || pos >= EDITING_BUFLEN) return 0;

	// shuffles chars down
        for (int i = EDITING_BUFLEN-1; i > pos; i--) {
                editing_buffer[i] = editing_buffer[i-1];
        }

	// inserts char and cuts off buffer at set length
        editing_buffer[pos] = to_insert;
        editing_buffer[EDITING_BUFLEN] = '\0';
        return 1;
}


/*
 * searchs through buffer for chars
 * moves all chars right of the chars index to the left
 * note this deletes the char by overwriting it
*/
int editor_delete_char(char *editing_buffer, char to_delete, int offset)
{
	// check if offset is a valid index
        if (offset < 0 || offset >= EDITING_BUFLEN) return 0;


        int i; // var to store index of found char

	/* searchs for char in buffer,
	   breaking if found (preserving i) or return 0 if not
	   */
        for (i = offset; i < EDITING_BUFLEN; i++) {
                char current = editing_buffer[i];
                if (current == to_delete) {
                        break;
                } else if (i == EDITING_BUFLEN-1) {
                        return 0;
                }
        }

	/* moves every replacement to the 'left'
	   this also overwrites element 'to_delete'*/
        while (i < EDITING_BUFLEN-1) {
                editing_buffer[i] = editing_buffer[i+1];
                i++;
        }
	// inserts null terminator to the end (to fill space)
        editing_buffer[EDITING_BUFLEN-1] = '\0';
        return 1; // return successful
}

int editor_replace_str(char *editing_buffer, const char *str, const char *replacement, int offset)
{
	// check if offset is a valid index
        if (offset < 0 || offset >= EDITING_BUFLEN) return 0;

	//stores lengths of the passes cstrings
        int str_len = strlen(str);
        int rep_len = strlen(replacement);

	//declare cstring to store a prospective match (+1 for room to null terminate)
        char tmp[str_len+1];
        int index;

        for (index = offset; index < EDITING_BUFLEN - str_len; index++) {
		//check of first chars are equal
                if (editing_buffer[index] == str[0]) {
			// if so populate tmp array
                        for (int j = 0; j < str_len; j++) {
                                tmp[j] = editing_buffer[index+j];
                        }
			tmp[str_len] = '\0'; //terminate
			//if strings are equal , ie str is found
                        if (strcmp(str, tmp) == 0) {
				//deletes the string
                                for (int s = 0; s < str_len; s++) {
                                        editor_delete_char(editing_buffer, str[s], index);
                                }
				//inserts the replacement
                                for (int r = 0; r < rep_len ; r++) {
                                        editor_insert_char(editing_buffer, replacement[r], index+r);
                                }

				/*if the buffer size has surpassed its set size,
				ie the replacement string is sufficently large enough
				deletes the appriate amount of chars of the end */
                                int buf_len = strlen(editing_buffer);
                                if (buf_len > EDITING_BUFLEN) {
                                        for (int i = buf_len; i >= EDITING_BUFLEN; i--) {
                                                editor_delete_char(editing_buffer, editing_buffer[i], i-1);
                                        }
                                }

				//calculates index of last inseted char
                                int pos = index + rep_len-1;
                                if (pos > EDITING_BUFLEN-1) pos = EDITING_BUFLEN-1;
                                return pos;
                        }
                }
        }
        return -1;  // failure return
}

void editor_view(char **viewing_buffer, const char *editing_buffer, int wrap)
{
	int i, j;
	char *p[VIEWING_COLS];
	for (i = 0; i < VIEWING_COLS; i++) {
		p[i] = (char*)viewing_buffer + VIEWING_ROWS*i;
		for (j = 0; j < VIEWING_ROWS; j++) {

		}
	}

	for (int i = 0; i < VIEWING_ROWS; i++) {
		memset(p[i], '\0', VIEWING_COLS);
	}
}
