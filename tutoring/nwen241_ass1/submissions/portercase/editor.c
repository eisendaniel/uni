#include "editor.h"
#include <string.h>

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{ // task 4 core 20 mark

    if (pos < 0 || pos >= editing_buflen)
    {
        return 0;
    }

    for (int idx = editing_buflen - 2; idx >= pos; idx--)
    {
        editing_buffer[idx + 1] = editing_buffer[idx];
    }
    editing_buffer[pos] = to_insert;

    return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset)
{ // task 5 core 25 mark

    // stop if outside list of chars
    if (offset < 0 || offset >= editing_buflen)
    {
        return 0;
    }

    // loop through all elements after offset and find char to delete
    for (int idx = offset; idx < editing_buflen; idx++)
    {
        if (editing_buffer[idx] == to_delete)
        {
            editing_buffer[idx] = editing_buffer[idx + 1];
            to_delete = 0;
        }

        if (idx < editing_buflen - 1 && to_delete == 0)
        {
            editing_buffer[idx] = editing_buffer[idx + 1];
        }
    }

    return to_delete == 0;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset)
{ // task 6 completion 12 mark

    // stop if outside list of chars
    if (offset < 0 || offset >= editing_buflen || strlen(str) == 0)
    {
        return -1;
    }

    int strstart = -1;
    for(int idx = offset; idx < editing_buflen; idx++){
        if(strncmp(editing_buffer + idx, str, strlen(str)) == 0){
            strstart = idx;
            break;
        }
    }

    if(strstart == -1){
        return -1;
    }

    int diff = strlen(str) - strlen(replacement);

    if(diff < 0){
        for (int idx = editing_buflen + diff - 1; idx > strstart; idx--)
        {
        editing_buffer[idx - diff] = editing_buffer[idx];
        }
    }

    if(diff > 0){
        for (int idx = strstart; idx < editing_buflen; idx++)
        {
            editing_buffer[idx] = editing_buffer[idx + diff];
        }
        for(int idx = editing_buflen - 1; idx >= editing_buflen - diff; idx--){
            editing_buffer[idx] = '\0';
        }
    }

    memcpy(editing_buffer + strstart, replacement, strlen(replacement));
    return strstart + strlen(replacement) - 1;
}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap)
{
    // task 7 challenge 10 mark
}
