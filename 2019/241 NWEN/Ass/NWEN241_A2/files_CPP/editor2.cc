//
// Created by Daniel on 7/04/2019.
//
#include <iostream>
#include <algorithm>
#include "editor2.hh"

//namespaces in use
using namespace editor2;
using namespace std;

//function to count words in buffer (sep by whtspc chars)
int EditorUtilities::countWords(const char *buffer, int size)
{
	int words = 0; //count to return
	bool lastWasSpec = true; //bool, if last char was a special char
	char *cptr = (char *) buffer; //pointer to incrementing
	for (int i = 0; i < size; i++) {
		//whitespace check
		if (*cptr == ' ' || *cptr == '\t' || *cptr == '\n' || *cptr == '\v' || *cptr == '\f' || *cptr == '\r') {

			//if the the last char wasn't a whtspc, add to word count, and record as a special char
			if (!lastWasSpec) words++;
			lastWasSpec = true;

		} else { lastWasSpec = false; } //wasn't special
		cptr++; //move pointer by a byte
	}
	if (!lastWasSpec) words++; //if the last char is valid, count it
	return words;
}

int EditorUtilities::searchMultipleNoCase(const char *buffer, int bufSize, string srchStr, int *pos, int posSize)
{
	string bufStr(buffer); //copies buffer to std::string

	//converts both bufStr and srchStr to lowercase
	transform(bufStr.begin(), bufStr.end(), bufStr.begin(), ::tolower);
	transform(srchStr.begin(), srchStr.end(), srchStr.begin(), ::tolower);

	int c = 0, index = 0; //count and index


	while (index < bufSize) {
		//.find return index of found substring (in bufStr
		int posi = bufStr.find(srchStr, index);
		if (posi == string::npos) return c; //if not found

		*pos = posi;
		pos++; //store found index in pos, and increment pointer
		c++; //add to count

		index = posi + 1; //update index (for next find offset) to last found index +1

		if (c >= posSize) return c; //return c when array of positions is full

	}
	return c;
}