/**
 * editor.c
 *
 * Model solution by Jakob Pfender
 */

#include "editor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * Insert a character into a buffer at the given position
 */
int base_editor_insert_char(char editing_buffer[], int editing_buflen,
                            char to_insert, int pos)
{

    /* Holds the char to be moved to the right */
    char carry;

    if (pos < 0 || pos >= editing_buflen) {
        // Invalid pos
        return 0;
    }

    // Start at pos and iterate through buffer
    for (; pos < editing_buflen; pos++) {

        // Save char at insert position ...
        carry = editing_buffer[pos];

        // ... replace it with to_insert ...
        editing_buffer[pos] = to_insert;

        // ... and queue it up as next char to be inserted.
        to_insert = carry;
    }

    // Null-terminate the resulting buffer
    editing_buffer[editing_buflen - 1] = '\0';

    return 1;
}

/**
 * Delete the first occurence of a given character in a buffer from the
 * given offset
 */
int base_editor_delete_char(char editing_buffer[], int editing_buflen,
                            char to_delete, int offset)
{

    /* Indicates whether target char was found in buffer */
    int found = 0;

    if (offset < 0 || offset >= editing_buflen) {
        // Invalid offset
        return 0;
    }

    // Start at offset and iterate through buffer
    while (offset < editing_buflen - 1) {

        if (!found && editing_buffer[offset] != to_delete) {
            // Run through buffer until we find target char
            offset++;
            continue;
        }

        found = 1;

        // Overwrite target char with next char
        editing_buffer[offset] = editing_buffer[offset + 1];

        if (editing_buffer[offset] == '\0') {
            // We've reached the end of the buffer
            break;
        }

        offset++;
    }

    if (found) {
        /* Just in case the buffer was completely full and not
         * null-terminated.
         */
        editing_buffer[offset] = '\0';
    }

    return found;
}

/**
 * Replace the first occurence of a given string from a given offset in
 * a buffer with another given string.
 */
int base_editor_replace_str(char editing_buffer[], int editing_buflen,
                            const char *str, const char *replacement,
                            int offset)
{

    /*
     * To record the lengths of the target and replacement strings and
     * also to keep track of where we are in the replacement
     */
    int str_len = strlen(str);
    int repl_str_len = strlen(replacement);

    if (offset < 0) {
        /* Invalid offset.
         *
         * Note that this function's return value conventions differ
         * from the previous functions!
         */
        return -1;
    }

    if (str_len <= 0) {
        // Invalid replacement string
        return -1;
    }

    for (; offset < editing_buflen; offset++) {
        // Search through editing buffer until we find the target string
        if (!(strncmp(editing_buffer + offset, str, str_len))) {
            break;
        }
    }

    if (offset == editing_buflen) {
        // We've reached the end of the buffer without finding the
        // target string
        return -1;
    }

    int i = 0;
    while (offset < editing_buflen && str_len && repl_str_len) {
        // Replace character by character until we reach the end of
        // either the target or the replacement string
        editing_buffer[offset++] = replacement[i++];
        str_len--;
        repl_str_len--;
    }

    /*
     * If the target and replacement strings had the same length,
     * neither of the following conditions hold and we can directly
     * return offset - 1
     */

    if (offset < editing_buflen && str_len > repl_str_len) {
        // There are characters left in the target string after
        // replacement; delete them
        while (str_len--) {
            editor_delete_char(editing_buffer, strlen(editing_buffer),
                               editing_buffer[offset], offset);
        }

    }
    else if (repl_str_len > str_len) {
        // There are characters left in the replacement string after
        // replacement; insert them
        while (offset < editing_buflen && repl_str_len--) {
            editor_insert_char(editing_buffer, strlen(editing_buffer),
                               replacement[i++], offset);
            offset++;
        }
    }

    // Index of the last inserted character
    return (offset - 1) < editing_buflen ? offset - 1 : editing_buflen - 1;
}

/**
 * Format the contents of the editing buffer according to given row and
 * column constraints and display them
 */
void base_editor_view(int rows, int cols, char viewing_buffer[rows][cols],
                      const char editing_buffer[], int editing_buflen,
                      int wrap)
{

    // Clear the viewing buffer
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            viewing_buffer[i][j] = '\0';
        }
    }

    int row = 0;
    int col = 0;
    int buflen = strlen(editing_buffer);

    for (int i = 0; i < buflen; i++) {

        if (row == rows || editing_buffer[i] == '\0') {
            // We've reached the end of either the viewing or the
            // editing buffer
            break;
        }

        if (editing_buffer[i] == '\n') {
            // Input line break, continue at beginning of next output line
            row++;
            col = 0;
            continue;
        }

        if (col == cols - 1) {
            // Reached end of current output line
            if (wrap) {
                // Continue on next output line
                row++;
                col = 0;
            }
            else {
                // Drop remainder of input line
                while (i < buflen && editing_buffer[i++] != '\n') {}
                row++;
                col = 0;
            }

            i--; // Otherwise the next input char would be skipped
            continue;
        }

        // Copy next input char into viewing buffer
        viewing_buffer[row][col++] = editing_buffer[i];
    }

    // Display the viewing buffer
    for (int i = 0; i < rows; i++) {
        printf("%s\n", viewing_buffer[i]);
    }
}
