#include <stdio.h>
#include <stdlib.h>
#include "movie.h"

int main(void)
{

    movie_t *movies = (movie_t *) calloc(DEFAULT_NUM_RECORDS, sizeof(movie_t));

    int r = populate(movies,DEFAULT_NUM_RECORDS);
    qsort(movies, r, sizeof(movie_t), compare_title);
    printf("\n-------- MOVIES ORDERED BY TITLE -------------\n");
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
