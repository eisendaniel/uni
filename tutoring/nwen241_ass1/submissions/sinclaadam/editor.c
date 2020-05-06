#include <stdio.h>
#include <string.h>

int editor_insert_char(char editing_buffer[], int editing_buflen,
                       char to_insert, int pos) {
    /* if the position is out of range return 0 */
    if (pos >= editing_buflen || pos < 0) {
        return 0;
    }


    /* Work from the end to the point moving each char along one */
    for (int i = editing_buflen - 1; i > pos; i--) {
        editing_buffer[i] = editing_buffer[i - 1];
    }
    /* Insert the char at pos and ensure the last value is \0 returning 1 */
    editing_buffer[pos] = to_insert;
    editing_buffer[editing_buflen - 1] = '\0';

    return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen,
                       char to_delete, int offset) {

    /* if the position is out of range return 0 */
    if (offset >= editing_buflen || offset < 0) {
        /* offset out of bounds */
        return 0;
    }

    /* find first instance of the char to delete, save it to found and break */
    int found = -1;
    for (int i = offset; i < editing_buflen; i++) {
        if (editing_buffer[i] == to_delete) {
            found = i;
            break;
        }
    }
    /* if found move all items across otherwise return 0 */
    if (found != -1) {
        for (found; found < editing_buflen - 1; found++) {
            editing_buffer[found] = editing_buffer[found + 1];
        }
    } else {
        /* char not found */
        return 0;
    }
    /* ensure last char is \0 and return 1 */
    editing_buffer[editing_buflen - 1] = '\0';

    return 1;
}

int editor_replace_str(char editing_buffer[], int editing_buflen,
                       const char *str, const char *replacement, int offset) {
    /* Check to ensure offset is within the bounds of the array */
    if (offset >= editing_buflen) { return -1; }

    int replacementLength = strlen(replacement);
    int stringLength = strlen(str);
    if (stringLength == 0) { return -1; }

    /* Check to make sure the str is actually present and remember the index of
		 the first char */

    int bufferIndex = offset; // holds the value of the first index of the str
    int strIndex = 0;         // index of the string to look at
    int found = 0;            // value will be 1 if found

    for (int i = offset; i < editing_buflen; i++) {
        if (editing_buffer[i] == str[strIndex]) {
            if (strIndex == 0) {
                bufferIndex = i;
            }
            /* If we are on the last index of our string to replace we have
						 found it */
            if (strIndex == stringLength - 1) {
                printf("Word was found\n");
                found = 1;
                break;
            }
            strIndex++;
        } else {
            strIndex = 0;
        }
    }

    if (found) {


        int lengthDifference = stringLength - replacementLength;

        /* must account for smaller, same size, and larger replacement */

        if (lengthDifference == 0) {

            /* It is safe to straight copy the other string */

            int replacementIndex = 0;
            for (int i = bufferIndex; i < bufferIndex + replacementLength; i++) {
                editing_buffer[i] = replacement[replacementIndex++];
            }
            return bufferIndex + replacementIndex - 1;
        } else if (lengthDifference > 0) {
            /* replacement string is smaller, thus we have to move the other chars towards the replacement */
            int replacementIndex = 0;

            /* replace the text up to the end of replacement */
            for (int i = bufferIndex; i < bufferIndex + replacementLength; i++) {
                editing_buffer[i] = replacement[replacementIndex++];
            }

            /* use existing method to delete the remaining characters */
            for (int i = bufferIndex + stringLength - 1; i > bufferIndex + replacementLength - 1; i--) {

                editor_delete_char(editing_buffer, editing_buflen, editing_buffer[i], i);

            }
            if (replacementLength == 0) { return bufferIndex + replacementLength; }
            return bufferIndex + replacementLength - 1;
        } else if (lengthDifference < 0) {
            /* replacement string is larger, thus we have to move the other chars towards the end */

            /* Start by making space for the extra chars using existing methods */
            for (int i = bufferIndex + stringLength; i < bufferIndex + replacementLength; i++) {
                editor_insert_char(editing_buffer, editing_buflen, ' ', i);
            }

            int replacementIndex = 0;
            /* Now there is enough room for the replacement to go in */
            for (int i = bufferIndex; i < bufferIndex + replacementLength; i++) {
                if (i >= editing_buflen - 1) {
                    editing_buffer[editing_buflen - 1] = '\0';
                    return i;
                }
                editing_buffer[i] = replacement[replacementIndex++];
            }
            editing_buffer[editing_buflen - 1] = '\0';
            return bufferIndex + replacementLength - 1;
        }
    } else {
        /* The string to replace was not found */
        return -1;
    }
}

void editor_view(int rows, int cols,
                 char viewing_buffer[rows][cols],
                 const char editing_buffer[],
                 int editing_buflen, int wrap) {

    /* set all viewing buffer to the null char */

    for (int row = rows; row < rows; row++) {
        for (int col = cols; col < cols; col++) {
            viewing_buffer[row][col] = '\0';
        }
    }

/* Variables needed for the logic */
    int row = 0;
    int col = 0;

/* Start loop through the editing buffer */
    for (int i = 0; i < editing_buflen; i++) {
        char currentChar = editing_buffer[i];

/* check for meaningful chars */
        if (currentChar == '\n') {
            row++;
            col = 0;
            if (row >= rows) {
                break;
            }
            continue;
        } else if (currentChar == '\0') {
            break;
        }
        /* check if at the end of the current row */
        if (col >= cols - 1) {
            if (wrap) {
                row++;
                col = 0;
                viewing_buffer[row][col] = editing_buffer[i];
                col++;
                continue;
            } else {
                continue;
            }
        }
        viewing_buffer[row][col] = editing_buffer[i];
        col++;

    }
/* end loop through editing buffer */
}
