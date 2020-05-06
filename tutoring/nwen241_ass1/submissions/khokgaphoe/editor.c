/**
 * NWEN 241 Programming Assignment 1
 * editor.h Header File
 * 
 * This header file contains the function prototypes for Tasks 4-7. 
 */

#ifndef __EDITOR_H__
#define __EDITOR_H__
#include <string.h>
#include <stdio.h>



/**
 * Task 4.
 * Insert a charater in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_insert Character to insert
 * @param pos Index where insertion should occur
 * @return 1 if the insertion occurred, otherwise 0
 */
int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){

    if(pos < 0 || pos >= editing_buflen ){return 0;} 
    else {

        //all the charater at the back up to pos move back by one
        for(int i = strlen(editing_buffer); i > pos ; i--){
            editing_buffer[i] = editing_buffer[i - 1]; 

        }
        editing_buffer[pos] = to_insert; //insert the character
        
        if(editing_buffer[editing_buflen-1] != '\0'){ 
            editing_buffer[editing_buflen-1] = '\0'; 
        }
        
        return 1;
        
    }
} 

 
/**
 * Task 5.
 * Delete the first occurrence of the character in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param to_delete Character to delete
 * @param offset Index to start searching for the character to delete
 * @return 1 if the deletion occurred, otherwise 0
 */
int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){

        if(offset < 0 || offset >= editing_buflen){return 0;}
        else{
        
            for(int i = offset; i < editing_buflen; i++){ //start checking from offset
                if(editing_buffer[i] == to_delete){//when found the charcter to delete
                
                    //move the rest of the character after that forward one
                    for(int j = i; j < editing_buflen; j++){ 
                        editing_buffer[j] = editing_buffer[j + 1];
                    }
                    
                    if(editing_buffer[editing_buflen-1] != '\0'){ 
                        editing_buffer[editing_buflen-1] = '\0'; 
                    }
                    
                    return 1;
                }
            }
        return 0; //when there's no charcter to delete
        }
}

/** 
 * Task 6.
 * Replace the first occurrence of the string in the editing buffer.
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param str String to replace
 * @param replacement Replacement string
 * @param offset Index to start searching for the string
 * @return If the string replacement occurred, the function should return the index corresponding the last letter of @str in @editing_buffer, otherwise, it should return -1.
 */
int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){

    if(offset < 0 || offset >= editing_buflen - 1){ return -1;}
    else if(strlen(str) == 0 || str == "\0"){ return  -1; }  //no replacement word
    else {
        
        char fromOffset[editing_buflen - offset]; //create a new array from offset 
        for(int i = offset; i < editing_buflen; i++){
            fromOffset[i - offset] = editing_buffer[i];
        }
        
        char *toReplace = strstr(fromOffset,str); //check if there's a word in str to be replace or not
        if(toReplace == NULL){return -1;} //can't find str, no replacement done
        
        int startReplace = toReplace - fromOffset;
        int endReplace = startReplace + strlen(replacement); //end of replacment word
        int endOld = startReplace + strlen(str); //end of the old world

        if(strlen(replacement) == 0){//if there's no word to replace an extra gap between two words needs to be get rid off
            endReplace = startReplace-1;
        }
        
        //write everything up to the replace word        
        for(int i = 0; i < startReplace + offset; i++){ 
            editing_buffer[i] = editing_buffer[i];
        }
        
        //add in the replace word
        for(int i = startReplace+offset; i < endReplace + offset; i++){
            editing_buffer[i] = replacement[i-(startReplace+offset)];
        }
        
        //add the rest of the array in after the replacement word
        int difference = endOld - (endReplace + offset); //the difference length between the old and new words
        for(int j = endReplace + offset; j < editing_buflen; j++){
            editing_buffer[j] = fromOffset[j+difference];
        }
        
        //add the null character to the rest of the array that doesn't have any char
        if(strlen(editing_buffer) < editing_buflen){
            for(int k = strlen(editing_buffer); k < editing_buflen; k++){
                editing_buffer[k] = '\0';
            }
        }
 
        //return the last letter of the replacment word
        if(endReplace+offset > editing_buflen){ //if the replacement word longer than array 
            return editing_buflen - 1;
            
        } else if (endReplace < 0){ //in the case that first word has been remove
            return 0;
            
       } else {
            return endReplace + offset - 1;
       }
        
    }
    
}


/**
 * Task 7.
 * Replace all occurrences of the string in the editing buffer.
 * @param rows Number of rows in viewing buffer
 * @param cols Numbber of columns in viewing buffer
 * @param editing_buffer Editing buffer
 * @param editing_buflen Length of editing buffer in bytes
 * @param wrap Whether wrapping is applied or not
 */
void editor_view(int rows, int cols, char viewing_buffer[rows][cols],
  const char editing_buffer[], int editing_buflen, int wrap) {
  
  
  int newline = 0;
  //find how many new line character are there in total
  for (int i = 0; i < editing_buflen; i++) {
    if (editing_buffer[i] == '\n') {
      newline++;
    }
  }
  
  //check if the last character is a new line character or not
  int lastChar = strlen(editing_buffer) - 1;
  if(editing_buffer[lastChar] != '\n'){ 
      newline++; //if not add an extra one
  }
  

  int newlinePosition[newline];
  //add all the position of the new line in an array
  newline = 0;
  for (int i = 0; i < editing_buflen; i++) {
    if (editing_buffer[i] == '\n') {
      newlinePosition[newline] = i;
      newline++;
    }  
    
  }
  
  if(editing_buffer[lastChar] != '\n'){ 
      newlinePosition[newline] = lastChar+1; //extra new line character if there's not one at the end
      newline++;
  }


  
  //before doing any copying set every character to null character
  for(int row = 0; row < rows; row ++){
      for(int col = 0; col < cols; col++){
          viewing_buffer[row][col] = '\0';
      }
  }


  if (wrap == 0) { //string doesn't need to be wrapped
  
    int currentPos = 0;
    int upto = 0;

    for (int line = 0; line < newline; line++) {

      int endLine = newlinePosition[line]; //position of the next "\n"
      int endCol = currentPos + cols - 1; //end of the column 
      

      if (endLine < endCol) { //choose the smaller one
        upto = endLine;
      } else {
        upto = endCol;
      }

      for (int i = 0; i < upto - currentPos; i++) {
        viewing_buffer[line][i] = editing_buffer[currentPos + i];
      }
      
      //after finish the current line move to the start of the next line straight away
      currentPos = endLine + 1; 
    }
    
  } else { //string need to be wrapped
  
    int currentPos = 0;
    int upto = 0;
    int endLine = 0;
    int endCol = 0;
    int newlinePos = 0; //to keep track of the newLine position in the newlinePosition array
    int line = -1; // to keep track of line position in the viewing buffer 
    
    while (newlinePos < newline) {     //"newline" is the total No. of "\n" char
        
        line++; // add up everytime each line in veiwing buffer is done
        endLine = newlinePosition[newlinePos]; //position of the next "\n"
        endCol = currentPos + cols - 1; //end of the column in viewing buffer
        
        if (endLine < endCol) { //choose the smaller one
          upto = endLine;
        } else {
          upto = endCol;
        }

      for (int i = 0; i < upto - currentPos; i++) {
        viewing_buffer[line][i] = editing_buffer[currentPos + i]; 
      }


      if (editing_buffer[upto] == '\n') { //never start a new line with "/n" move to the next one instead
        upto++;
      }
      
      if (upto >= endLine) { //if pass the current endline possition 
        newlinePos++; //move to the next end line position
       }
       
       //set current position to where it's up to last time
       currentPos = upto; 

    }
  }
}




#endif /* __EDITOR_H__ */

