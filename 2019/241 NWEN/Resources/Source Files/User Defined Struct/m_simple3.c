#include <stdio.h>		// for output
#include <stdlib.h>		// standard library
#include <string.h>		// for strcpy()

#define DEFAULT_STRLEN      100

typedef struct movie {
	char title[DEFAULT_STRLEN];
	char director[DEFAULT_STRLEN];
	short release_year;
	short oscars_won;
	char imdb_link[DEFAULT_STRLEN];
	char origin_country[DEFAULT_STRLEN];
} movie_t;

int main(void)
{
	 movie_t m;

	 strcpy(m.title, "Rise of the Planet of the Apes");
	 strcpy(m.director, "George Jones");
	 m.release_year = 1992;
	 m.oscars_won = 7;
	 strcpy(m.imdb_link, "www.imdb.com/Jupiter");
	 strcpy(m.origin_country, "NZ");

	 printf("\nMovie title: %s", m.title);
	 printf("\nMovie director: %s", m.director);
   printf("\nMovie release year: %hd", m.release_year);
	 printf("\nMovie oscars won: %hd", m.oscars_won);
	 printf("\nMovie imdb link: %s", m.imdb_link);
 	 printf("\nMovie origin country: %s", m.origin_country);
	 printf("\n------------------------\n");
	return 0;

}
