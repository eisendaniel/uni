#include <stdio.h>
#include <string.h>
#include "editor.h"


int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int position){
        int idx = editing_buflen;
        if(position >= editing_buflen || position < 0) return 0;
        //move every element above the insert positionition one positionition over
        while(idx > position) {
                editing_buffer[idx] = editing_buffer[idx - 1];
                 --idx;
        }
        //insert the character at the positionition
        editing_buffer[position] = to_insert;
        //set the last character in the array to null
        editing_buffer[editing_buflen] = '\0';

        return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
        int idx;
        if(offset > editing_buflen) return 0;
        //find the index of the character to delete
        for( idx = offset; idx < editing_buflen; idx++) {
                if(editing_buffer[idx] == to_delete) {
                        break;
                }
        }
        if(idx == editing_buflen) return 0;
        //move every element after the to_delete index one space left
        while(idx < editing_buflen) {
                editing_buffer[idx] = editing_buffer[idx +1];
                 ++idx;

        }

        return 1;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement,
                       int offset){
        int substring_length = strlen(str);
        int replacement_length = strlen(replacement);
        int position;
        if(substring_length < 1 || offset > editing_buflen) return -1;
        //if the editing buffer contains the substring
        if(strstr(editing_buffer, str)) {
                char *substring = strstr(editing_buffer, str);
                position = substring - editing_buffer;
                if(offset > position) return -1;
                //if the replacement string will fit in the place of substring
                if(substring_length >= replacement_length) {
                        //for every character in the substring replace it with the replacement string corresponding Character
                        //if the replacement string is smaller than the substring move the rest of the characters to the left
                        for(int i = position, replacement_index = 0; i < substring_length + position; i++, replacement_index++) {
                                if(replacement_index < replacement_length) {
                                        editing_buffer[i] = replacement[replacement_index];
                                }else {
                                        int idx = position + replacement_length;
                                        while(idx < editing_buflen) {
                                                editing_buffer[idx] = editing_buffer[idx + 1];
                                                ++idx;
                                        }
                                }
                        }
                }else{
                        //if the replacement string is larger than the substring insert the characters and move everything
                        //to the right to make space.
                        for(int index = position, replacement_index = 0; index < replacement_length + position; index++, replacement_index++) {
                                if(replacement_index >= substring_length) {
                                        editor_insert_char(editing_buffer, editing_buflen, replacement[replacement_index], index);
                                }else{
                                        editing_buffer[index] = replacement[replacement_index];
                                }
                        }

                }
        }
        else{
                printf("no occurence\n");
                return -1;
        }

        return position + replacement_length - 1;
}


void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){

        int line_index = 0;
        char temp = ' ';
        int len = 0;
        if (wrap) {
                //for every row and column
                for(int c = 0; c <= cols; c++) {
                        for(int r = 0; r <= rows +1; r++) {
//tag to goto so the code was less verbose
CHECK:
                                temp = editing_buffer[len++];
                                //get rid of spaces at the start of each line
                                if(r == 0 && temp == ' ') {
                                        temp = editing_buffer[++len];
                                }
                                //if the character is not a newline character then copy it to the viewing buffer
                                //else set the row equal to zero and move down to the next line
                                if(temp != '\n' && len <= editing_buflen) {
                                        viewing_buffer[c][r] = temp;
                                }else if(temp == '\n') {
                                        c++;
                                        r = 0;
                                        goto CHECK;
                                }

                        }
                }

        }else{
                line_index = 0;
                int space = 0;
                for(int c = 0; c <= cols; c++) {
                        for(int r = 0; r <= rows +1; r++) {
ACHECK:
                                //get rid of spaces at the start of each line
                                temp = editing_buffer[len++];
                                if(r == 0 && temp == ' ') {
                                        temp = editing_buffer[++len];
                                }
                                //put the character in the viewing buffer if it wont go past the end
                                if(temp != '\n' && len <= editing_buflen) {
                                        if(space <= rows+1 ) viewing_buffer[line_index][r] = temp;
                                        space++;
                                }else if(temp == '\n') {
                                        line_index++;
                                        space = 0;
                                        r = 0;
                                        goto ACHECK;
                                }

                        }
                }
        }
}
