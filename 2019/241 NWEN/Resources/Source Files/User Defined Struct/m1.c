#include <stdio.h>
#include <stdlib.h>

#define DEFAULT_STRLEN      100
#define DEFAULT_NUM_RECORDS 1

typedef struct movie {
	char title[DEFAULT_STRLEN];
	char director[DEFAULT_STRLEN];
	short release_year;
	short oscars_won;
	char imdb_link[DEFAULT_STRLEN];
	char origin_country[DEFAULT_STRLEN];
} movie_t;

int populate(movie_t *m);

int main(void)
{

    movie_t *movies = (movie_t *) calloc(DEFAULT_NUM_RECORDS, sizeof(movie_t));

    int r = populate(movies);

    printf("\n-------- MOVIE ENTERED -------------\n");
    for(int i=0; i<r; i++) {
        printf("\nTitle             : %s", movies[i].title);
        printf("\nDirector          : %s", movies[i].director);
        printf("\nFirst Release Year: %d", movies[i].release_year);
        printf("\nOscars Won        : %d", movies[i].oscars_won);
        printf("\nIMDB Link         : %s", movies[i].imdb_link);
        printf("\nOrigin Country    : %s", movies[i].origin_country);
        printf("\n---------------------\n");
    }

    return 0;
}

int populate(movie_t *m)
{
      printf("\nEnter movie");
      printf("\n---------------------\n");
      printf("Input movie title: ");
      scanf("%s", m->title);
      printf("Input movie director: ");
      scanf("%s", m->director);
      printf("Input year the movie was released: ");
      scanf("%hd", &m->release_year);
      printf("Input year the number of oscars won: ");
      scanf("%hd", &m->oscars_won);
      printf("Input movie imdb link: ");
      scanf("%s", m->imdb_link);
      printf("Input movie origin country: ");
      scanf("%s", m->origin_country);

    return 1;
}
