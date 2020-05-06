
//Praveen Bandarage 300485949
#include <string.h>
//#include <stdbool.h> //for some reason my stdbool.h would not import (literally right before I was about to submit, it worked on different machines) therefore
// I had to use type definition

typedef int bool;
#define true 1
#define false 0


int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos) {

    //Check to ensure there are no improper arguments
    if (pos < 0 || pos >= editing_buflen) {
        return 0;
    }

    //For loop which shifts ensures proper shifting
    for (int shiftPos = editing_buflen - 1; shiftPos >= pos; shiftPos--) {
        editing_buffer[shiftPos] = editing_buffer[shiftPos - 1];
    }
    //when I'm at the position I want to insert, change the value to the desired character
    editing_buffer[pos] = to_insert;

    //Ensure last character is a null terminator before returning it
    editing_buffer[editing_buflen - 1] = '\0';
    return 1;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset) {
    //Variables initialised for saving the index and check if deletion occurred
    int savedIndex = 0;
    bool checkIfDeleted = false;

    //Check to ensure there are no improper arguments
    if (offset < 0 || offset >= editing_buflen) {
        return 0;
    }
    //Go through the loop and check if the editing_buffer contains the 'to-delete char' and then break out of the loop
    for (int i = offset; i <= editing_buflen - 1; i++) {
        if (to_delete == editing_buffer[i]) {
            checkIfDeleted = true;
            savedIndex = i;
            break;
        }
    }
    //Check to see if a char has been deleted. If not, then delete it as there is no point altering it!
    if (checkIfDeleted == false) {
        return 0;
    }
    //Go through the loop and shift the values within it
    for (int i = savedIndex; i < editing_buflen - 1; ++i) {
        editing_buffer[i] = editing_buffer[i + 1];
    }
    //Set the last character to a null terminator and return a success!
    editing_buffer[editing_buflen - 1] = '\0';
    return 1;

}

int
editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset) {
    //Check to ensure there are no improper arguments
    if (offset < 0 || offset >= editing_buflen) {
        return -1;
    }
    //Get the length of the words
    int removedWord = strlen(str);
    int replacmentWord = strlen(replacement);

    //Created the 'j' and indexPos variable for checking
    int jIncrement = 0;
    int indexPos = -1;

    //Go through the editing-_buffer checking if the first letter
    for (int i = 0; i < editing_buflen; i++) {
        if (editing_buffer[i] == str[0]) {
            //Check if there is a full match by incrementng through
            while (editing_buffer[i] == str[jIncrement]) {
                i++;
                jIncrement++;
                if (jIncrement == removedWord) {
                    //This takes the current value of i and subtracts it from the length of the string we are searching for, giving Starting position
                    indexPos = i - removedWord;
                }
            }
        }

    }

    // An int that should be returned if my code is successful
    int return_val = indexPos;

    // Exhaustive If statement which checks, if the offset is less than 0, >= the length of the buffer, if the string is empty and of correct postioning of the index
    if (offset < 0 || offset >= editing_buflen || removedWord == 0 || str[0] == '\0' || indexPos < offset ||
        indexPos == -1) {
        return -1;
    }

    //For loop which implements the deletion of the char based on the position
    for (int positionIndex = 0; positionIndex < removedWord; positionIndex++) {
        //If statement which returns -1 if there was any issue, this is an additional but very important check!
        if (!editor_delete_char(editing_buffer, editing_buflen, editing_buffer[indexPos], indexPos)) {
            return -1;
        }
    }

    //For loop which implements insertion
    for (int insertionIndex = 0; insertionIndex < replacmentWord; insertionIndex++) {
        //Check to see if the return value is the same length as the editing buffer, if so we are successful return the value, we are done!
        if (return_val == editing_buflen) { return return_val; }
        //If there was a failure in this aspect, return -1 to indicate a failure occuriing.
        if (!editor_insert_char(editing_buffer, editing_buflen, replacement[insertionIndex], indexPos + insertionIndex)) {
            return -1;
        }
        // Increment to the return value, so that we are able to return the position of the last inserted char in a sequence
        return_val++;
    }

    // Return to show success at this part!
    return return_val - 1;
}

//Have not completed this part of the assignment
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen,
                 int wrap) {
}






