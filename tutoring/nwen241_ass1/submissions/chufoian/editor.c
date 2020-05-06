#include <string.h>
#include <stdio.h>

#include "editor.h"

int editor_insert_char(char editing_buffer[], int editing_buflen, char to_insert, int pos){
	char edited[editing_buflen];
	int offset = 0;
	int ret = 0;
	
	int i;
	for (i=0; i<editing_buflen; i++){ // iterate over the editing buffer
		if(i==pos){ // if at the position
			edited[i]=to_insert; // insert char
			offset++; // increase the offset by 1 
			ret = 1;
		}else{
			edited[i]=editing_buffer[(i-offset)]; // insert characters from original buffer with regards to offset
		}
	}
	
	// ensure last char is null
	edited[strlen(edited)]='\0'; 
	edited[i]='\0';
	
	strcpy(editing_buffer, edited);
	
	return ret;
}

int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
	char edited[editing_buflen];
	int insert_offset = 0;
	int ret = 0;
	
	int i;
	for (i=0; i<editing_buflen; i++){ // iterate over the editing buffer
		if(editing_buffer[i]==to_delete && i>=offset && ret==0){ // if we match the condition to delete
			insert_offset++; // alter the offset and return value
			ret=1;
		}else{
			edited[i-insert_offset]=editing_buffer[i]; // insert characters from original buffer with regards to offset
		}
	}
	
	// ensure last char is null
	edited[strlen(edited)]='\0';
	edited[i]='\0';
	
	strcpy(editing_buffer, edited);
	
	return ret;
}

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
	char edited[editing_buflen];
	
	int match_start, match_end;
	int match_index=0;
	
	int i;
	for (i=0; i<editing_buflen; i++){ // get the start,end index of *str if it exists
		if(i>=offset){
			if(match_index==0){ // if above the offset and no current match
				if(editing_buffer[i] == str[match_index]){ // if match first character
					match_start = i; // record match start index
					match_index++; // increase the match index to look for second char
					//printf("start match at '%c'\n",editing_buffer[i]);
				}
			}else if(match_index!=-1){
				if(match_index==strlen(str)){ // full match
					match_end = i-1; // record match end index
					// printf("match terminated successfully at '%c': match is between %i and %i\n",editing_buffer[i], match_start, match_end);
					// printf("%c--%c",editing_buffer[match_start],editing_buffer[match_end]);
					match_index=-1; // don't look for more matches
				}else if(editing_buffer[i] == str[match_index]){ // if subsequent character match
					match_index++; // look for next match
					//printf("match continue at '%c'\n",editing_buffer[i]);
				}else{ // failed without finding full match
					//printf("match terminated unsuccessfully at '%c'\n",editing_buffer[i]);
					match_index=0; // try again
				}
			}
		}	
	}
	
	if(match_index!=-1)return -1; // no match
	
	int replacement_index=0;
	int shift = strlen(str)-strlen(replacement); // get how many far the chars after replacement should be shifted
	
	for (i=0; i<editing_buflen; i++){
		if(i<match_start){ // before match
			edited[i]=editing_buffer[i]; // copy all the buffer before match
		}else if(i>=match_start){ // after match
			if(replacement_index<strlen(replacement)){ // replacing str with replacement 
				edited[i]=replacement[replacement_index];
				replacement_index++;
			}else{ // finished replacing
				edited[i]=editing_buffer[i+shift];
			}
		}
	}
	
	// ensure last char is null
	edited[strlen(edited)]='\0';
	edited[i]='\0';
	
	strcpy(editing_buffer, edited);
	
	return match_end-shift;
}

void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
	char edited_viewing_buffer[rows][cols];
	
	// set all in edited buffer to null character before copying
	for(int r=0; r<rows; r++){
		for(int c=0; c<cols; c++){
			edited_viewing_buffer[r][c]='\0'; 
		}
	}
	
	char current_character;
	
	int r=0;
	int c=0;
	
	for (int i=0; i<editing_buflen; i++){
		current_character = editing_buffer[i];
		
		if(current_character=='\n'){ // if it's newline
			c=0; // move our inserting column back to 0
			r++; // move down one row
		}else if(c<cols-1){ // if we're within the inserting range
			edited_viewing_buffer[r][c]=current_character;
			c++; // insert the character and move the column over
		}else if(c==cols-1){ // if we're at the end character
			edited_viewing_buffer[r][c]='\0'; // set the end character to null
			if(wrap){ // if to wrap
				c=0; // move our inserting column back to 0
				r++; // move down one row

				edited_viewing_buffer[r][c]=current_character; // insert the character
				c++; // move the column over
			}
		}
	}	
	
	for(int r=0; r<rows; r++){ // copy it all over
		strcpy(viewing_buffer[r],edited_viewing_buffer[r]); 
	}
}