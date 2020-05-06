#include <stdio.h>
#include <string.h>


int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos) {

    for (int i = editing_buflen-1; i >= pos; i--) { //Moving all elements after the pos up one slot in the array
        if (i > 0) {
            editing_buffer[i] = editing_buffer[i-1];
        }
    }

    editing_buffer[pos] = to_insert;
    editing_buffer[editing_buflen-1] = '\0'; //Ensuring final element in char array is a null char

    if (editing_buffer[pos] == to_insert) { //Checking if inserted char was replaced with a null char
        return 1;
    } else {
        return 0;
    }
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset) {
    int pos = -1; //Storing arbitrary value

    for (int i = offset; i <= editing_buflen-1; i++) { //Finding position of to_deleta char
        if (editing_buffer[i] == to_delete) {
            pos = i; //Storing postion of to_delete
            break;
        }
    }

    if (pos == -1) { //Returning 0 if to_delete was not found
        return 0;
    }

    for (int i = pos; i <= editing_buflen-1; i++) { //Moving all elements from pos+1 to the left
        if (i < editing_buflen-1) {
            editing_buffer[i] = editing_buffer[i+1];
        } else { //If we have reached the end of the array, set the final value to null character
            editing_buffer[editing_buflen-1] = '\0';
        }
    } 

    return 1;
            
}

//C:\Users\calla\Desktop\Nwen241\Assignment01 (1)\files
//gcc editor.c t6test.c -o t6test

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset) {
    int pos = -1; //Storing arbitrary value
    int len = strlen(str);
    int repLen = strlen(replacement);
    int dif = len - repLen; //Difference in length of replacement word

    for (int i = offset; i <= editing_buflen-1; i++) {

        if (editing_buffer[i] == str[0]) { //Finding first letter
            int count = 0;

            for (int j = 0; j <= len-1; j++) { //If first letter is found, testing if rest of word follows
                if (editing_buffer[i+j] == str[j]) {
                    count++;

                    if (count == len) { //Breaking and storing position of word if full word is found
                        pos = i;
                        break;
                    }
                } else {
                    break; //Breaking from for loop and going back to previous loop to continue search
                }
            }
        }

    }

    if (pos == -1) { //Returning -1 if word was not found
        return pos;
    }

    int returnVal = pos + repLen-1; //Storing the location of the final element of the replacement word

    /** Dif < 0 = len < repLen -- Dif > 0 = len > repLen **/

    if (dif < 0) { //If the new word is larger than the old world

        for (int i = editing_buflen-1; i > pos+(repLen-1); i--) { //Moving all elements after the replacement up the difference
            if (i > 0) {
                editing_buffer[i] = editing_buffer[i+dif];
            }
        }

        editing_buffer[editing_buflen-1] = '\0'; //Ensuring final value is null character 


    } else if (dif > 0) { //If the new word is smaller than the old word

        for (int i = pos + (repLen); i <= editing_buflen-1; i++) { //Moving all elements from pos+1 to the left
            if (i < editing_buflen-1) {
                editing_buffer[i] = editing_buffer[i+dif];
            } else { //If we have reached the end of the array, set the final value to null character
                editing_buffer[editing_buflen-1] = '\0';
            }
        }

    }

    for (int i = 0; i <= repLen-1; i++) { //Inserting the replacement word
        editing_buffer[pos+i] = replacement[i]; 
    }

    return returnVal;

}


