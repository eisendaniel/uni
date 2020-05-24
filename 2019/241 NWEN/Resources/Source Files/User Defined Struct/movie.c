#include <stdio.h>
#include <string.h>
#include "movie.h"

int populate(movie_t *m, int lim)
{
    int count = 0;

    while (count < lim){
      printf("\nEnter movie %d", count+1);
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

      m++;
      count++;
    }

    return count;
}


int compare_title(const void *a, const void *b)
{
    movie_t *m1 = (movie_t *)a;
    movie_t *m2 = (movie_t *)b;

    return strcmp(m1->title, m2->title);
}

int compare_year(const void *a, const void *b)
{
    movie_t *m1 = (movie_t *)a;
    movie_t *m2 = (movie_t *)b;

    return m1->release_year - m2->release_year;
}
