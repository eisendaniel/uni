//
// Created by Connor de Bruyn on 17/03/2020.
//

#include <stdio.h>
#include <string.h>

#include "editor.h"

/**
 * Task 4. - working
 */
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){
    //Catching Errors
    if(pos >= editing_buflen){
        return 0;
    }

    //Moving items above pos 1 position forward
    for (int i = editing_buflen; i >= pos; i--)
        editing_buffer[i] = editing_buffer[i-1];

    //inserting item at pos
    editing_buffer[pos] = to_insert;
    return 1;
}


/**
 * Task 5. - working
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
    //Searching through char[] for to_delete character
    //if found, shift to left else return 0.
    int found  = 0;
    for (int i = offset; i+1 < editing_buflen; i++) {
        if (found) {
            editing_buffer[i] = editing_buffer[i+1];
        } else if(editing_buffer[i] == to_delete){
            found  = 1;
            editing_buffer[i] = editing_buffer[i+1];
        }
    }
    if(found){
        return 1;
    }

    return 0;
}


/**
 * Task 6. - working
 */
int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
    //If the string is empty, return
    if(str[0] == '\0'){
        return -1;
    }

    //Getting size of string
    int strSize = 0;
    for(int i = 0; i< sizeof(str); i++){
        if(str[i] != '\0'){
            strSize++;
        }else{
            break;
        }
    }

    //Search to see if the Keyword is there first.
    int found  = 0;
    int indexStart = 0;
    for (int i = offset; i+1 < editing_buflen; i++) {
        if(found < strSize) {
            if (str[found] == editing_buffer[i]) {
                if(found == 0){
                    indexStart = i;
                }
                found++;
            } else {
                found = 0;
            }
        }
    }

    //If string isn't there, return.
    if(found < strSize){
        return -1;
    }

    //Replace the string, storing index and returning index
    int index = 0;
    for(int i=indexStart; i< editing_buflen; i++){
        if(index < strSize) {
            if(replacement[index] != '\0') {
                editing_buffer[i] = replacement[index];
            } else{
                editing_buffer[i] = ' ';
            }
            index++;
        } else{
            editing_buffer[i] = editing_buffer[i+1];
        }
    }

    //Getting size of replacement
    int repSize = 0;
    for(int i = 0; i< sizeof(replacement); i++){
        if(replacement[i] != '\0'){
            repSize++;
        }else{
            break;
        }
    }
    return indexStart+index-(strSize-repSize)-1;
}



/**
 * Task 7. - working
 */
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
    //Setting every character as the null character
    for(int i=0; i<rows; i++){
        for(int j=0; j<cols; j++){
            viewing_buffer[i][j] = '\0';
        }
    }

    //Adding editing_buffer to viewing_buffer
    int row=0;
    int col=0;
    for(int pos=0; pos<editing_buflen; pos++){
        //If encountering newline char
        if(editing_buffer[pos] == '\n'){
            row++;
            col=0;
        //Else add the char
        }else{
            //If text not wrapped, don't add chars past cols-1
            if(wrap == 0) {
                if (col < cols-1) {
                    viewing_buffer[row][col] = editing_buffer[pos];
                    col++;
                }
            //Else text is wrapped, chars appear on next line after
            } else{
                if(col == cols-1){
                    col=0;
                    row++;
                }
                viewing_buffer[row][col] = editing_buffer[pos];
                col++;
            }
        }
    }
}





