#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

/* Program developed for NWEN243, Victoria University of Wellington
   Author: Kris Bubendorfer (c) 2015.
   Uses a modified caeser I & II

   Compile:  gcc -o encode encode.c

   // Make a file with a plain aplhabet in it:

   % cat > test
   ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ^D

   // test it - this should be the correct result when encoding.

   % cat test | encode "i came, i saw"
   key: HJKLNOPQRTUVICAMESWXYZBDFG - 26
   HJKLNOPQRTUVICAMESWXYZBDFG

 */

char upcase(char ch)
{
	if (islower(ch)) { ch -= 'a' - 'A'; }
	return ch;
}

char *fixkey(char *s)
{
	int i, j;
	char plain[26]; // assume key < length of alphabet, local array on stack, will go away!

	for (i = 0, j = 0; i < (int)strlen(s); ++i) {
		if (isalpha(s[i])) { plain[j++] = upcase(s[i]); }
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

void buildtable(char *key, char *encode)
{
	// This function needs to build an array of mappings in the 'encode' array from plaintext characters
	// to encypered characters.  The encode array will be indexed by the plaintext char.  To
	// make this a useful 0-26 index for the array, 'A' will be stubtracted from it (yes you
	// can do this in C).  You can see this in the main(){} below.  The values in the array
	// will be the cipher value, in the example at the top A -> H, B -> J, etc.

	// You are implementing a Caesar 1 & 2 combo Cypher as given in handout.
	int offset = strlen(key) - 1;

	fixkey(key); // fix the key, i.e., uppercase and remove whitespace and punctuation
	rmdups(key);

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
}

int main(int argc, char **argv)
{
	// format will be: 'program' key {encode|decode}
	// We'll be using stdin and stdout for files to encode and decode.

	// first allocate some space for our translation table.
	char *encode = (char *)malloc(sizeof(char) * 26);
	char ch;

	if (argc != 2) {
		printf("format is: '%s' key", argv[0]);
		exit(1);
	}

	// Build translation tables, and ensure key is upcased and alpha chars only.
	buildtable(argv[1], encode);

	// write the key to stderr (so it doesn't break our pipes)
	fprintf(stderr, "key: %s - %lu\n", encode, strlen(encode));

	// the following code does the translations.  Characters are read
	// one-by-one from stdin, translated and written to stdout.

	ch = fgetc(stdin);
	while (!feof(stdin)) {
		if (isalpha(ch)) {        // only encrypt alpha chars
			ch = upcase(ch);      // make it uppercase
			fputc(encode[ch - 'A'], stdout);
		} else { fputc(ch, stdout); }
		ch = fgetc(stdin);      // get next char from stdin
	}
}
  
