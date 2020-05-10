/*
 ============================================================================
 Name        : editor.c
 Author      : Abdullah
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */
#include "editor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{
    int i;
    char* p = editing_buffer;

    if (pos < 0 || pos >= p)
        return 0;

    for (i = p - 1; i > pos; i--)
        p[i] = p[i - 1];

    p[pos] = to_insert;

    return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{
    int i;
    char* p = editing_buffer;

    if (NULL == p)
        return 0;
    char* start = p;

    while (*p) {
        if (*p != to_delete)
            *start++ = *p;
        p++;
    }
    *start = '\0';
}

int main(void)
{

    char editing_buffer[] = "HELLO, WORLD!";
    char editing_buffer1[] = "HELLO, WORLD!";
    char* p = editing_buffer;
    char* p1 = editing_buffer1;
    int len = strlen(p);
    int len1 = strlen(p1);
    // call insert fun.
    editor_insert_char(editing_buffer, len, 'S', 0);

    // call delete fun.
    editor_delete_char(editing_buffer1, 20, 'O', 5);

    // display editing_buffer
    for (int i = 0; i <= len; i++)
        printf("%c", editing_buffer[i]);

    printf("\n\n");
    // display editing_buffer
    for (int i = 0; i <= len1; i++)
        printf("%c", editing_buffer1[i]);

    return 0;
}
