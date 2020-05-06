#include "editor.h"
#include <string.h>

/**
 * Method makes a new result char array to replace editing_buffer
 * If position index impossible to reach in for loop, will return 0
 * once position found, character will be inserted into the position of result array
 * if iteration is past the position index, will move all results to the right
 * copies the result char array to editing_buffer
 */
int editor_insert_char(char editing_buffer[], int editing_buflen,
                       char to_insert, int pos)
{
    char arr[editing_buflen];
    if(pos >= editing_buflen) return 0;
    for(int i = 0; i<editing_buflen; i++){
        if(pos == i) {
            arr[i] = to_insert;
        } else {
            if(i > pos)
                arr[i] = editing_buffer[i - 1];
            else
                arr[i] = editing_buffer[i];
        }
    }
    strncpy(editing_buffer, arr, editing_buflen);
    return 1;
}

/**
 * Method makes a new result char array to replace editing_buffer
 * There is a flag to tell conditions once delete char found
 * will not search for char to delete until offset index
 * if found is flagged, all chars beyond will be moved to left
 * copies the result char array to editing_buffer
 * returns 0 if str not found
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, 
                       char to_delete, int offset)
{
    char arr[editing_buflen];
    int found = 0;                                  
    for(int i = 0; i < editing_buflen; i++){
        if(i >= offset){                         
            if(editing_buffer[i] == to_delete){
                found = 1;                     
            } else{
                if(found == 1){
                    arr[i - 1] = editing_buffer[i];
                } else{
                    arr[i] = editing_buffer[i];
                } 
            }    
        } else{
            arr[i] = editing_buffer[i]; 
        }
    }
    if(found == 1) {
        strncpy(editing_buffer, arr, editing_buflen); 
        return 1;
    } else {
        return 0;   
    }
}

/**
 * Method makes a new result char array to replace editing_buffer
 * Creates length variables for str and replacemtn for index length use
 * Return -1 if str to replace is empty
 * Stores an int value to return at the end of method, default for if str not found is -1
 * Flags word found if the whole string is comfirmed and will not check anymore for word while flagged
 * Once first occurance of str[0] found, loops through the length of the str to find to check all chars
 * If word found, it is replaced and to_return value set to its last index
 */
int editor_replace_str(char editing_buffer[], int editing_buflen,
                       const char *str, const char *replacement, 
                       int offset)
{
    char arr[editing_buflen];
    int str_length = strlen(str);
    int rep_length = strlen(replacement);
    if(str_length == 0) return -1;
    int difference = rep_length-str_length; //difference marks the ammount the code will be moved to left or right
    int to_return = -1; 
    int found_word = 0;
    for(int i = 0; i < editing_buflen; i++){
        if(i >= offset){
            if(editing_buffer[i] == str[0] && found_word != 1){ 
                found_word = 1;
                for(int j = 0; j < str_length; j++){        
                    if(editing_buffer[(i + j)] != str[j]){  
                        found_word = 0;
                        break;
                    }
                }
                if(found_word == 1){                 
                    for(int j = 0; j < rep_length; j++){
                        if(j != 0) 
                            i++;
                        arr[i] = replacement[j];
                    }
                    to_return = i; 
                }
            } else{
                if(found_word == 1) 
                    arr[i] = editing_buffer[i - difference]; //if found, move all chars (left or right) according to difference variable
                else 
                    arr[i] = editing_buffer[i];
            }
        } else {
            arr[i] = editing_buffer[i];
        }
    }
    strncpy(editing_buffer, arr, editing_buflen + difference); //difference of word replacement considered when copying result to main array
    return to_return;

}


/**
 * Method sets all viewing_buffer chars to null character
 * iteration (i) tracks which index of editing_buffer to print
 * if there is no more of editing_buffer to read, breaks until nested loop done
 * if new line char found, iterate and move to next row
 * if not wrap, will loop and iterate (i) until finding new line char and will begin next row OR will break nested loop if finished
 * if all conditions above not met set the current r and c to the next index of editing_buffer
 */
void editor_view(int rows, int cols, 
                 char viewing_buffer[rows][cols], 
                 const char editing_buffer[], 
                 int editing_buflen, int wrap)
{
    for(int r = 0; r < rows; r++){
        for(int c = 0; c < cols; c++){
            viewing_buffer[r][c] = '\0';
        }
    }
    int i = 0;                   
    for(int r = 0; (r < rows); r++){
        for(int c = 0; (c < cols); c++){
            if(i >= editing_buflen){     
                break; 
            } else if(editing_buffer[i] == '\n'){  
                i++;
                break;
            } else if(c == cols - 1 && wrap == 0) {    
                for(int j = 0; j < editing_buflen; j++){ 
                    if(editing_buffer[i] == '\n'){  
                        i++;
                        break;
                    } else{
                        i++;     
                    }
                }
                break;      
            } else if(c == cols - 1 && wrap == 1){ 
                break;  
            } else{
                viewing_buffer[r][c] = editing_buffer[i];
                i++;
            } 
        }
    }   
}
