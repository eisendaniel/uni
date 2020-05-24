/**
 * myeditor.cc
 *
 * You must implement the member functions, including constructors, of your class defined in myeditor.hh.
 * Consult the assignment handout for the detailed specifications of each of the member functions.
 *
 * Student ID: 300447549
 * Name: Daniel Eisen
 */

#include "myeditor.hh"
#include <iostream>
#include <cstring>
#include <string>

using namespace editor;
using namespace std;

int MyEditingBuffer::insertChar(char toInsert, int pos)
{
	// check if pos is a valid index
	if (pos < 0 || pos >= BUFFER_LEN) return 0;

	// shuffles chars down
	for (int i = BUFFER_LEN - 1; i > pos; i--) {
		buffer[i] = buffer[i - 1];
	}

	// inserts char and cuts off buffer at set length
	buffer[pos] = toInsert;
	buffer[BUFFER_LEN] = '\0';
	return 1;
}

int MyEditingBuffer::deleteChar(char toDelete, int offset)
{
	// check if offset is a valid index
	if (offset < 0 || offset >= BUFFER_LEN) return 0;

	int i; // var to store index of found char

	/*
	  searchs for char in buffer,
	  breaking if found (preserving i) or return 0 if not
	 */

	for (i = offset; i < BUFFER_LEN; i++) {
		char current = buffer[i];
		if (current == toDelete) {
			break;
		} else if (i == BUFFER_LEN - 1) {
			return 0;
		}
	}

	/* moves every replacement to the 'left'
	this also overwrites element 'to_delete'*/
	while (i < BUFFER_LEN - 1) {
		buffer[i] = buffer[i + 1];
		i++;
	}
	buffer[BUFFER_LEN - 1] = '\0';
	return 1;
}

bool MyEditingBuffer::replace(char c, char rep, int offset)
{
	// check if offset is a valid index
	if (offset < 0 || offset >= BUFFER_LEN) return false;

	// searchs buffer
	for (int i = offset; i < BUFFER_LEN; i++) {
		//the the char is found, replaces it, returns
		if (buffer[i] == c) {
			buffer[i] = rep;
			return true;
		}
	}
	return false; // never found
}

int MyEditingBuffer::replace(std::string str, std::string rep, int offset)
{
	if (offset < 0 || offset >= BUFFER_LEN) return -1;

	//stores lengths of the passes cstrings
	int str_len = str.length();
	int rep_len = rep.length();
//declare cstring to store a prospective match (+1 for room to null terminate)
	char tmp[str_len + 1];
	int index;

	for (index = offset; index < BUFFER_LEN - str_len; index++) {
		//check of first chars are equal
		if (buffer[index] == str.c_str()[0]) {

			for (int j = 0; j < str_len; j++) {
				// if so populate tmp array
				tmp[j] = buffer[index + j];
			}
			tmp[str_len] = '\0'; //terminate
			//if strings are equal , ie str is found
			if (strcmp(str.c_str(), tmp) == 0) {
				//deletes the string
				for (int s = 0; s < str_len; s++) {
					deleteChar(str.c_str()[s], index);
				}
				//inserts the replacement
				for (int r = 0; r < rep_len; r++) {
					insertChar(rep.c_str()[r], index + r);
				}

				/*if the buffer size has surpassed its set size,
				ie the replacement string is sufficently large enough
				deletes the appriate amount of chars of the end */
				int buf_len = strlen(buffer);
				if (buf_len > BUFFER_LEN) {
					for (int i = buf_len; i >= BUFFER_LEN; i--) {
						deleteChar(buffer[i], i - 1);
					}
				}

				//calculates index of last inseted char
				int pos = index + rep_len - 1;
				if (pos > BUFFER_LEN - 1) pos = BUFFER_LEN - 1;
				return pos;
			}
		}
	}
	return -1; // failure return
}

void MyEditingBuffer::justify(char **viewingBuffer, int rows, int cols)
{}
