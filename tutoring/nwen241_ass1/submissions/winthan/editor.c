#include <stdio.h>
#include <string.h>
#include "editor.h"

/* Assignment 1
*  Than Win
*  Dr. Alvin Valera
*  File name: editor.c
*  This is the submission file for assignment 1, that has coding tasks 4-6
*/

// int main(){
//   char buffer[21] = "The quick brown fox";
//   int r = editor_replace_str(buffer, 21, "brown", "blue", 11);
//   return 0;
// }

/*
* Task 4
* Inserts a charater in the editing buffer at the desired location
* @param editing_buffer Editing buffer
* @param editing_buflen Length of editing buffer in bytes
* @param to_insert Character to insert
* @param pos Index where insertion should occur
* @return 1 if the insertion occurred, otherwise 0
*/
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){
  /* for loop is used to shift the elements of the buffer one spot to the right
     Starts from the second to last and copies the current element to the one
     to the right. Shifts to element to the left and does the same until the
     desired position is reached
  */
  int original_len = strlen(editing_buffer);
  for (int i = editing_buflen-1; i > pos; i--) {
    editing_buffer[i] = editing_buffer[i-1];
  }

  //replaces the current/old char at the desired postion with the desired char
  editing_buffer[pos] = to_insert;

  /*In order for insertion to be successful the string length should be the
    original+1
  */
  printf("%c\n", editing_buffer[editing_buflen-1]);
  if(editing_buffer[editing_buflen-1]=='\0') {
    return 1;
  } else {
    return 0;
  }
}//end editor_insert_char



/**
 * Task 5.
 * Deletes the first occurrence of the character in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_delete Character to delete
 * @param offset Index to start searching for the character to delete
 * @return 1 if the deletion occurred, otherwise 0
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
  /* Use a for loop to iterate through array starting from offset to find first
  * occurance of the character. Uses a flag variable to determine when to start
  */
  int flag = 0;
  int original_len = strlen(editing_buffer);

  for (int i = offset; i <= editing_buflen; i++) {
    //if statement is used to determine the state of the flag
    if (editing_buffer[i] == to_delete) {
      flag = 1;
    }
    //Shifts elements from deleted point down one
    if(flag == 1) {
      editing_buffer[i] = editing_buffer[i+1];
    }
  }//end iterating for loop

  //sets last element of buffer to null
  editing_buffer[editing_buflen] = '\0';

  printf("%d, %d\n", original_len, strlen(editing_buffer));
  /*checks to see if char was deleted by checking str len and for the added
  * null terminator at the end
  */
  int ret = original_len - 1 == strlen(editing_buffer)
            && editing_buffer[editing_buflen] == '\0' ? 1 : 0;
  return ret;
} //end editor_delete_char

/**
 * Task 6.
 * Replace the first occurrence of the string in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param str String to replace
 * @param replacement Replacement string
 * @param offset Index to start searching for the string
 * @return If the string replacement occurred, the function should return the
    index corresponding the last letter of @str in @editing_buffer, otherwise,
    it should return -1.
 */
int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
  //create a new buffer that wil hold the change.
  char new_buffer[editing_buflen];
  char *chk;
  memcpy(new_buffer, editing_buffer, sizeof(new_buffer));


  //Beginning and ending index locations of str to be repalced in the buffer
  int srt_index = 0;
  int end_index = strlen(str)-1;
  int found = 0; //Flag variable
  char t_word[strlen(str)]; //temporary word used to compare to desired
  // printf("Length of '%s': %d\n",str, strlen(str));
  //check to see if str is even in the buffer
  if (strstr(editing_buffer, str) && offset < strlen(editing_buffer)) {

    //Find where the string to be replaced is in the char array
    while (end_index<editing_buflen && !found) {
        // printf("srt_index: %d end_index: %d\n", srt_index, end_index);
        int loc = 0;
        //assign the temporary t_word
        for(int i = srt_index; i < end_index+1; i++){
          // printf("loc: %d, i: %d\n", loc, i);
          t_word[loc] = editing_buffer[i];
          loc++;

          //compares the t_word and str to se if they're the same
          if(strcmp(str,t_word)==0){
            //printf("str beings at %d and ends at %d\n", srt_index, end_index);
            found = 1; //set flag to getout of while loop
          } //end if (strcmp)
        }//end for
        srt_index++;
        end_index++;
    } //end while loop

    //Command is invalid if the offset value is after the index of the str
    if(offset > srt_index){
      return -1;
    }

    int rVal = end_index; //index of last letter of replacement
    /* Now we know where str begins and starts in the char array
    *  3 steps:
    *  Build the first part of the word; put in the replacement; finish the end
    */

    //Build first part of the word
    char new_word[editing_buflen]; //new word should be the same size
    memset(&new_word[0], 0, sizeof(new_word)); //clear char array for new_word
    int nw_loc = 0; //keep track of index of new word
    //use for loop from 0 to srt_index
    for (int i = 0; i < srt_index-1; i++) {
      new_word[nw_loc] = editing_buffer[i];
      nw_loc++;
    }


    // printf("First part: %s\n",new_word);
    //if replacement is longer than str, og chars needs to be moved to the right
    //throw out the characters that will not fit in the buffer
    if(nw_loc + strlen(replacement) < strlen(editing_buffer)){
      // printf("In first\n");
      //add in the replacement word up to the end of the buffer
      for (int i = 0; nw_loc < strlen(editing_buffer); i++) {
        new_word[nw_loc] = replacement[i];
        nw_loc++;
      }
      //else if statement if there are remaining chars after the replacement
    } else{
      // printf("In else\n");
      //add in the replacement word knowing more chars will be added to the end
      for (int i = 0; nw_loc <= editing_buflen-2; i++) {
        new_word[nw_loc] = replacement[i];
        nw_loc++;
      }//end for
    }//end else

    nw_loc--; //compensate for the extra incremenat

    //if replacement is longer than str
    if(strlen(replacement) > strlen(str)) {
      //move char after str to the right
      //throw out chars that will not fit in buffer
      // printf("Need to move char to the right\n");
        for (int i = end_index; i < strlen(editing_buffer); i++) {
          new_word[i+(strlen(replacement)-strlen(str))] = editing_buffer[i];
        }

        new_word[editing_buflen-1] = '\0'; //last item in the buffer is NULL
      //else if replacement is shorter than str
    } else if (strlen(replacement) < strlen(str)) {
    // printf("move chars after str to the left\n");
    // printf("Current: %s\t nw_loc: %d\n", new_word, nw_loc);
      //insert NULL in vacant positions
      //for loop will add the rest of chars from buffer
      for (int i = strlen(new_word); i < strlen(editing_buffer); i++) {
        new_word[i] = editing_buffer[end_index];
        end_index++;
      }
      // printf("Final word: '%s' Size: %d\n",new_word, strlen(new_word));
      //this for loop will add the rest of the null chars
      for (int i = strlen(new_word); i < editing_buflen; i++) {
        new_word[i] = '\0';
      }

      printf("Word: %s\n", new_word);
    } else if(strlen(replacement) == strlen(str)) {
      for (int i = end_index; i < strlen(editing_buffer); i++) {
        new_word[i] = editing_buffer[i];
      }
      new_word[editing_buflen-1] = '\0'; //last item in the buffer is NULL
      // printf("Final word: '%s' Length: %d\n", new_word, strlen(new_word));
    }


    //assign the new word to the buffer
    for (int i = 0; i < editing_buflen; i++) {
      editing_buffer[i] = new_word[i];
    }
    return rVal;
  } else {

    // printf("Desired str is not in the string\n");
    return -1;

  }//end if else

}//end editor_replace_str

/**
 * Task 7.
 * Replace all occurrences of the string in the editing buffer.
 * @param rows Number of rows in viewing buffer
 * @param cols Numbber of columns in viewing buffer
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param wrap Whether wrapping is applied or not
 */
void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
  //TODO
}//end editor_view
