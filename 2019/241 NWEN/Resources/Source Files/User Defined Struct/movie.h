#ifndef __MOVIE_H__
#define __MOVIE_H__

#define DEFAULT_STRLEN      100
#define DEFAULT_NUM_RECORDS 3

typedef struct movie {
	char title[DEFAULT_STRLEN];
	char director[DEFAULT_STRLEN];
	short release_year;
	short oscars_won;
	char imdb_link[DEFAULT_STRLEN];
	char origin_country[DEFAULT_STRLEN];
} movie_t;

/**
 * Populate array with movie data
 * Populate array pointed to by m with records retrieved from
 * user input
 * @param m Pointer to array
 * @param lim Maximum number of records that m can store
 * @return Number of records stored in m
 */
int populate(movie_t *m, int lim);

/**
 * qsort callback function for comparing titles
 */
int compare_title(const void *, const void *);

/**
 * qsort callback function for comparing release years
 */
int compare_year(const void *, const void *);

#endif /* __MOVIE_H__ */
