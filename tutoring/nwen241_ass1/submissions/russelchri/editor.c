#include "editor.h"
#include <stdio.h>
#include <string.h>

/*int main(){
    char editing_buffer[] = "Tom has a big"; //0-12 len 13
    char search[] = "Tom";
    char replace[] = "";
    //int outcome = editor_insert_char(editing_buffer, strlen(editing_buffer), 'c', 1);
    //int outcome2 = editor_delete_char(editing_buffer, strlen(editing_buffer), 'z', 0);
    int outcome3 = editor_replace_str(editing_buffer, strlen(editing_buffer), search, replace, 0);
    printf("%s, returns: %d\n", editing_buffer, outcome3);
    return 0;
} */

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){
    char temp[editing_buflen];
    strcpy(temp, editing_buffer);
    if (pos < editing_buflen){
          for (int i = pos; i < editing_buflen-1; i++){
              editing_buffer[i+1] = temp[i];
          }
          editing_buffer[pos] = to_insert;
          editing_buffer[editing_buflen] = '\0';
          return 1;
    }
    return 0;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
    char temp[editing_buflen];		
    strcpy(temp, editing_buffer);
    for (int i = offset; i < editing_buflen; i++){
        if (editing_buffer[i] == to_delete){
             for (int j = editing_buflen-1; j > i; j--){
                 editing_buffer[j-1] = temp[j];
             }
             editing_buffer[editing_buflen-1] = '\0';
             return 1;
        }
    }
    return 0;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
    char temp[editing_buflen];		
    strcpy(temp, editing_buffer);
    int str_found = 0;
    int str_length = strlen(str);
    int str_pos = -1;
    int rpl_length = strlen(replacement); //replace length
    
    //Find
    
    for (int i = offset; i < editing_buflen - str_length + 1; i++){ //no point checking the rest if there isn't room for the full string we are searching for
        if (editing_buffer[i] == str[0]){
            str_found = 1;
            str_pos = i;
            for (int j = 0; j < str_length; j++){
                if (editing_buffer[i+j] != str[j]){ // 'i' is the index of editing_buffer where the first character of the string is found, 'j' is the current index of the search string
                    str_found = 0;
                }
            }
        }
    }
    
    //Replace
    
    if (str_found){
        int replace_index = 0;
        int editing_index = str_pos;
        if (str_length > rpl_length){
            
            while(editing_index < str_pos + rpl_length){ //for the replacement word starting from the found string
                    editing_buffer[editing_index] = replacement[replace_index];
                    replace_index++;
                    editing_index++;
            }
            for (int i = 0; i < str_length - rpl_length; i++){
                editor_delete_char(editing_buffer, strlen(editing_buffer), editing_buffer[editing_index], editing_index);
            }
            
        } else {
            
            while(editing_index < str_pos + str_length){ //for the string found in editing_buffer
                editing_buffer[editing_index] = replacement[replace_index];
                replace_index++;
                editing_index++;
            }
            while (editing_index < str_pos + rpl_length){
                editor_insert_char(editing_buffer, strlen(editing_buffer), replacement[replace_index], editing_index);
                replace_index++;
                editing_index++;
            }
        
        }
        
        editing_buffer[editing_buflen] = '\0';
        if (editing_index < editing_buflen){
            return editing_index-1;//Because the index gets incremented after last insertion
        } else {
            return editing_buflen-1;
        }
    }
    return -1;
}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
    //Make all of viewing buffer null chars
    for (int y = 0; y < rows; y++){
        for (int x = 0; x < cols; x++){
            viewing_buffer[y][x] = '\0';
        }
    }

    int y = 0; //current row
    int i = 0; //current editing buffer index
    while (y < rows && i < editing_buflen){ //At any point in this loop it should end if we reach the end of the editing buffer
        int x = 0; //current column
        while (x < cols-1 && i < editing_buflen){
            if (editing_buffer[i] == '\n'){
                x = cols+999; //exit loop
            } else {
                viewing_buffer[y][x] = editing_buffer[i];
            }
            x++;
            i++;
        }
        if (wrap == 0 && editing_buffer[i-1] != '\n'){ //If wrap is off and a new line hasn't already been processed in the above loop ^^^
            //Skip all characters until a new line is found
            while (editing_buffer[i] != '\n' && i < editing_buflen){
                i++;
            }
            i++;
        }
        y++;
    }
}
