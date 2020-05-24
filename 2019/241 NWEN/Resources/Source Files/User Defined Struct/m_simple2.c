#include <stdio.h>		// for output
#include <stdlib.h>		// standard library
#include <string.h>		// for strcpy()

#define DEFAULT_STRLEN      100

typedef struct Books {
	char title[DEFAULT_STRLEN];
	char author[DEFAULT_STRLEN];
	short year_published;
} Book;

int main(void)
{

	Book book;

	strcpy(book.title, "The Catcher in the Rye");
	strcpy(book.author, "J. D. Salinger");
	book.year_published = 1951;


	 printf("\nBook title: %s", book.title);
	 printf("\nBook author: %s", book.author);
   printf("\nBook published: %hd", book.year_published);

	 printf("\n------------------------\n");
	return 0;

}
