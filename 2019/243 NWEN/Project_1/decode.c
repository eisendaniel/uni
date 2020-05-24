#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

/* Program developed for NWEN243, Victoria University of Wellington
   Author: Kris Bubendorfer (c) 2014-15.
   Uses a modified caesar I & II (in 2015)

   Compile:  gcc -o decode decode.c

   See encode for  examples on using it
 */

char upcase(char ch)
{
	if (islower(ch)) {
		ch -= 'a' - 'A';
	}
	return ch;
}

char *fixkey(char *s)
{
	int i, j;
	char plain[26]; // assume key < length of alphabet, local array on stack, will go away!

	for (i = 0, j = 0; i < (int)strlen(s); i++) {
		if (isalpha(s[i])) {
			plain[j++] = upcase(s[i]);
		}
	}
	plain[j] = '\0';
	return strcpy(s, plain);
}

/*
* passed key
* removes duplicate by adding char not alreadu in plain to plain
*/
char *rmdups(char *s)
{
	int index = 0;
	char plain[26];

	for (unsigned long i = 0; i < strlen(s); ++i) {
		if (!(strchr(plain, s[i]))) {
			plain[index++] = s[i];
		}
	}
	plain[index] = '\0';
	return strcpy(s, plain);
}

void buildtable(char *key, char *decode)
{ // this changed from encode
	// This function needs to build an array of mappings in 'encode' from plaintext characters
	// to encihered characters.

	// You are implementing a Caesar 1 & 2 combo Cypher as given in the lab handout.
	// Your code here:

	// probably need to declare some stuff here!
	int offset = strlen(key) - 1;
	char encode[26], alpha[26] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	fixkey(key); // fix the key, i.e., uppercase and remove whitespace and punctuation
	rmdups(key); //remove duplicate char from key

	// the simplest way to do this is to do exactly the same as you did when creating the
	// encode table, and then look up the encode table to get the translations, and build the
	// decode table from this.  This isn't the most efficient approach, but it will get the
	// job done unless you want to be fancy.

//inserts key into encode alphabet
	for (int i = 0; key[i] != '\0'; ++i) {
		if (offset > 25) { offset = 0; }
		encode[offset++] = key[i];
	}
//populates rest of encode table w/ remaining letters
	char add = encode[offset - 1] + 1;
	for (int i = 0; i < (26 - (int)strlen(key)); ++i) {
		if (offset > 25) { offset = 0; }
		if (add > 'Z') { add = 'A'; }
		while (strchr(key, add)) { ++add; }
		encode[offset++] = add++;
	}

	for (char c = 'A'; c <= 'Z'; ++c) {
		decode[c - 'A'] = alpha[strchr(encode, c) - encode];
	}
}

int main(int argc, char **argv)
{
	// format will be: 'program' key {encode|decode}
	// We'll be using stdin and stdout for files to encode and decode.

	// first allocate some space for our translation table.

	char *decode = (char *)malloc(sizeof(char) * 26); // this changed from encode
	char ch;

	if (argc != 2) {
		fprintf(stderr, "format is: '%s' key", argv[0]);
		exit(1);
	}

	// Build translation tables, and ensure key is upcased and alpha chars only.
	buildtable(argv[1], decode); // this changed from encode

	// write the key to stderr (so it doesn't break our pipes)

	fprintf(stderr, "key: %s - %lu\n", decode, strlen(decode));


	// the following code does the translations.  Characters are read
	// one-by-one from stdin, translated and written to stdout.

	ch = fgetc(stdin);
	while (!feof(stdin)) {
		if (isalpha(ch)) {          // only decrypt alpha chars
			fputc(decode[ch - 'A'], stdout);
		} else {
			fputc(ch, stdout);
		}
		ch = fgetc(stdin);      // get next char from stdin
	}
}

