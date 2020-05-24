//
// Created by Daniel on 7/04/2019.
//

#include <stdio.h>
#include <string.h>
#include "editor2.h"

//function to count distinct lines in a passed buffer
int editor_count_lines (const char *buffer, int size)
{
	int lines = 0; //counter to return
	char *cptr = (char *) buffer; //copy buf for incrementing
	for (int i = 0; i < size; i++) {
		if (*cptr == '\n') lines++; //when a newline is found, add 1 to lines found
		cptr++; //increment pointer val by a byte
	}
	return lines;
}

int editor_search_multiple (const char *buffer, int bufSize, const char *srchStr, int *pos, int posSize)
{
	int c = 0, l = strlen (srchStr); //count return c and, length of search string l
	if (l == 0) return 0; //if srchStr is empty

	/**
	 * uses strstr() return a pointer to the next occurrence of srchStr from buf_cpy
	 * while buf_cpy is not a null pointer
	 * increments buf_cpy by adding the length of the search string, ie to avoid finding the same substring twice
	 * thus for loop only loops when a valid string is found
	 * */
	for (char *buf_cpy = strstr (buffer, srchStr); buf_cpy; buf_cpy = strstr (buf_cpy + l, srchStr)) {
		//computes index by subtracting pointer value at substring from pointer value of the beginning of the buffer
		//adds to position array at index c then increments c
		pos[c++] = strstr (buf_cpy, srchStr) - buffer;

		if (c >= posSize) return c; //return c when array of positions is full
	}
	return c;
}