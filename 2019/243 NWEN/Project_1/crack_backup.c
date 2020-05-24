#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#define TEXT_SIZE 200000  // Note, the longer the text the more likely you will get a good 'decode' from the start.
#define ALEN 26         // Number of chars in ENGLISH alphabet
#define CHFREQ "ETAONRISHDLFCMUGYPWBVKJXQZ" // Characters in order of appearance in English documents.
#define ALPHABET "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

/* Program developed for NWEN243, Victoria University of Wellington
   Author: Kris Bubendorfer, this extended version (c) 2015
   LAB: 2

   This program applies a basic frequency analysis on a cyphertext.  It has been extened over the 2014 version to
   solve polyalphabetic cyphers - by brute force.  In this case, it applies the frequency analysis for different 
   numbers of n keys (polyalphabetic Caeser).  Obviously it will need a cypher of about n times
   the typical length for a monoalphabetic cypher.

   Program is used like this:

   Compile:  gcc -o crack crack.c

   Test file (ctext): JWRLS, XSSH PZK JH HES BJFV, UZU (this is not a realistic length piece of cypher text)

   crack n

   Argument:

   n number of keys to try

   ---

   % cat ctext | crack 1
   ALICE, MEET YOU AT THE PARK, BOB   <-- of course it won't be this correct.  Don't worry about that for the -d option.
   AMFDE, UEET LNH AT TIE RASC, ONO   <-- this is what it really looks like, a larger sample is better, this is short.


 */

char upcase(char ch)
{
	if (islower(ch)) {
		ch -= 'a' - 'A';
	}
	return ch;
}

int main(int argc, char **argv)
{

	// first allocate some space for our input text (we will read from stdin).

	char *text = (char *)malloc(sizeof(char) * TEXT_SIZE + 1);
	char *cracked = (char *)malloc(sizeof(char) * TEXT_SIZE + 1);
	char english[26] = CHFREQ;
	char ch;
	int N = 0, n, i, j, index;

	if (argc > 1 && (N = atoi(argv[1])) > 0) {}
	else {
		fprintf(stderr, "Malformed argument, use: crack [n], n > 0\n");
		exit(-1);
	} // get the command line argument n

	// Now read TEXT_SIZE or feof worth of characters (whichever is smaller) and convert to uppercase as we do it.
	// Added: changed to count frequencies as we read it in

	for (i = 0, ch = fgetc(stdin); i < TEXT_SIZE && !feof(stdin); i++, ch = fgetc(stdin)) {
		text[i] = (ch = (isalpha(ch) ? upcase(ch) : ch));
	}
	text[i] = '\0'; // terminate the string properly.

	/* At this point we have two things,
	 *   1. The input cyphertext in "text"
	 *   2. The maximum number of keys to try (n) - we'll be trying 1..n keys.
	 *
	 * What you need to do is as follows:
	 *   1. create a for-loop that will check key lengths from 1..n
	 *   2. for each i <= n, spit the cypher text into i sub-texts.  For i = 1, 1 subtext, for i = 2, 2 subtexts, of alternating characters etc.
	 *   3. for each subtext:
	 *          a. count the occurance of each letter
	 *          b. then map this onto the CHFREQ, to create a map between the sub-text and english
	 *          c. apply the new map to the subtext
	 *   4. merge the subtexts
	 *   5. output the 'possibly' partially decoded text to stdout.  This will only look OK if i was the correct number of keys
	 *
	 * what you need to output (sample will be provided) - exactly:
	 * i maps -> stderr
	 * i 'possible' translations
	 *
	 * You would be wise to make seperate functions that perform various sub-tasks, and test them incrementally.  Any other approach will likely
	 * make your brain revolt.  This isn't a long program, mine is 160 lines, with comments (and written in a very verbose style) - if yours is
	 * getting too long, double check you're on the right track.
	 *
	 */


	/*
	 * Split text into subtexts according to N
	 * */
	for (n = 1; n <= N; ++n) {
		char subtexts[n][TEXT_SIZE];
		for (i = 0; i < n; ++i) {
			for (j = i, index = 0; j < (int)strlen(text); j += n, ++index) {
				subtexts[i][index] = text[j];
			}
			subtexts[i][index] = '\0';
		}

		/*
		 * count occurrence of each char in each subtext
		 * */
		int occur[n][ALEN];
		memset(occur, 0, sizeof(occur[0][0]) * n * ALEN);

		for (i = 0; i < n; ++i) {
			for (j = 0; j < (int)strlen(subtexts[i]); ++j) {
				occur[i][subtexts[i][j] - 'A']++;
			}
		}

		/*
		 * sorting occurs from highest to smallest
		 * transforms a clean alphabet concurrently
		 * thus forming ordered char arrays by frequency
		 * */
		char key[n][ALEN];
		int a;
		for (int sub = 0; sub < n; ++sub) {
			strcpy(key[sub], ALPHABET);
			for (i = 0; i < ALEN; ++i) {
				for (j = i + 1; j < ALEN; ++j) {
					if (occur[sub][i] < occur[sub][j]) {
						a = occur[sub][i];
						occur[sub][i] = occur[sub][j];
						occur[sub][j] = a;

						ch = key[sub][i];
						key[sub][i] = key[sub][j];
						key[sub][j] = ch;
					}
				}
			}
		}

		/*
		 * mapping cipher char frequency to english char frequency
		 * and subbing in subtexts
		 * */
		for (i = 0; i < n; ++i) {
			for (j = 0; j < (int)strlen(subtexts[i]); ++j) {
				if (isalpha(subtexts[i][j])) {
					index = strchr(key[i], subtexts[i][j]) - key[i];
					subtexts[i][j] = english[index];
				}
			}
		}
		/*
		 * Splicing subtexts back together
		 * */
		for (i = 0; i < n; ++i) {
			for (j = i, index = 0; index < (int)strlen(subtexts[i]); j += n, ++index) {
				cracked[j] = subtexts[i][index];
			}
		}

		//output
		fprintf(stdout, "Keys: %d\n", n);
		for (i = 0; i < (int)strlen(text); ++i) {
			fputc(cracked[i], stdout);
		}
	}
}
