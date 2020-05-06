
#include "editor.h"
#include <string.h>
#include <stdio.h>

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
    int pos=-1; // set the initial position to be -1
    if (offset < 0 || offset > editing_buflen - 1) // check if the offset is out of bounds 
    {
        return 0;
    }

    for (int i = offset; i < editing_buflen - 1; i++) // from the offset search through the data 
    {
        if (editing_buffer[i] == to_delete) // check to see if the current character matches the character we want to delete 
        {
          
            pos = i; // save the position of the character we want to delete 
            editing_buffer[i] = '\0'; // make the position a null character 
        }
    }
    if (pos==-1){return 0;} // if the character we are looking for is not found return 
    for (int i = pos; i < editing_buflen - 1; i++) // move all remaining characters
    {
        editing_buffer[i] = editing_buffer[i + 1];
    }
    editing_buffer[editing_buflen - 1] = '\0'; // ensure that the final character is a null character 
    return 1;
}

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos)
{
    if (pos < 0 || pos > editing_buflen - 1)  // check that the pos is within the editing buffer 
    {
        return 0;
    }

    for (int i = editing_buflen - 1; i > pos; i--) // for each position move to the right 
    {
        editing_buffer[i] = editing_buffer[i - 1];
    }
    editing_buffer[pos] = to_insert; // insert the char 
    return 1;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset)
{
	int  str_len = strlen(str);
    int replacement_len = strlen(replacement);
    
    // conditional operator if string length is > replacement then the difference = (true:false)
    int len_diff = str_len > replacement_len ? str_len - replacement_len : replacement_len - str_len;
    
    // check if the replacement is possible (within the bounds)
    if (offset < 0 || str_len == 0 || offset >= editing_buflen || offset + str_len >= editing_buflen)
        return -1;

    for (int i = offset; i < editing_buflen; i++) { // i is the current position of the 
        int j;

        //check to see if the word matches the word we need to replace if not break out of the for loop 
        for (j = 0; j < str_len; j++){
            if (editing_buffer[i + j] != str[j]){
                break;
			}
		}

        // if the j value matches the replacement string length then we have found the replacement string 
        if (j < str_len){
            continue;
		}
		
		// will only get to here if the replacement string is found and i will be the start of the replacement string
        
        if (str_len < replacement_len) { //Move contents after the last character of the replacement word to the left
            for (j = editing_buflen - 1; j > i + str_len; j--)
                editing_buffer[j] = editing_buffer[j - len_diff];
        }
        else if (str_len > replacement_len) { //Move contents right
            for (j = i; j < editing_buflen; j++)
                editing_buffer[j] = editing_buffer[j + len_diff];
        }

        //Insert the replacement string but ensure that the last item in the editing buffer is still a null character 
        for (j = 0; j < replacement_len && i + j < editing_buflen; j++){
		
            editing_buffer[i + j] = replacement[j];
		}

        //Return the index of the last character of the replacement string 
        return i + j - 1;
    }
    
    return -1;
}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap)
{
	
	int row ;
	int col ;
	
	for (int r=0 ; r<rows ;r++){
		for (int c=0 ; c<cols ; c++){
			viewing_buffer[r][c]='\0';
		}
	}
	
	row=0;
	col=0;
		
		for (int i =0 ; i<editing_buflen ; i++){
			char c = editing_buffer[i];
			
			if (c=='\0'){break;}
			
			if (c=='\n'){
				
				row++;
				col=0;
				continue;
			}
			if (wrap && col>=cols-1){
				row++;
				col=0;
			}
			if (col>=cols-1){
				continue;
			}
			else if (row>=rows){
				
				break;
			}
			
			viewing_buffer[row][col]=c;
			
			col++;
				
		}
		
	
	
	
}
