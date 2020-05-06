//dan strawbridge
#include <stdio.h>
#include <string.h>

int editor_insert_char(char editing_buffer[], int editing_buflen,
char to_insert, int pos){
	//if out of range return 0
	if(pos > editing_buflen - 1){return 0;}
	//creating new array
	char newa[editing_buflen]  ;
	int b = 0; 
	//looking thru editing_buflen
	for(int a = 0 ; a < editing_buflen  ; a++){
		//if found replace
		if (a == pos){
			newa[pos] = to_insert ;
			a++ ;
			newa[a] = editing_buffer[a - 1]	;
			b = 1 ;
			}else{
				//put in correct place depending if has been found or not 
				if(b == 1){
					newa[a] = editing_buffer[a - 1]	;
				}else{
					newa[a] = editing_buffer[a]	;
					}
				}		
		}
		//last char to be null
	newa[editing_buflen - 1] = '\0' ;	
	//adding back in
	for(int i=0; i<editing_buflen ;i++ ){
		editing_buffer[i] = newa[i] ;
	}
	return 1 ;
	}


int editor_delete_char(char editing_buffer[], int editing_buflen, char to_delete, int offset){
	int a = strlen(editing_buffer);
	//char newa[editing_buflen]  ;
	int b;
	int found = 0;
	//if offset not in editing_buffer
	if(offset>editing_buflen){return 0 ;}
	for (b = offset ; b < editing_buflen; b ++){
		if (editing_buffer[b] == to_delete){found = 5; break ; }
		}
	if(found < 1){return 0 ;}	
	//didnt find the char so return 0

	for(b; b <  editing_buflen -1  ; b++){
		editing_buffer[b] = editing_buffer[b + 1] ;

		}
		editing_buffer[b ] = '\0' ;
		//make sure last char is null
		editing_buffer[editing_buflen - 1] = '\0' ;	
	
return 1 ;
}	
	

int editor_replace_str(char editing_buffer[], int editing_buflen, const char *str, const char *replacement, int offset){
	
	//look for str in editing_buffer 
	//replace str with replacement 
		//if replacement is longer than str, move the characters after str to the right by the dif in string sizes (if char reaches end throw out)
		//if replacement is shorter than str, move the characters after str to the left by the dif in string sizes (insert null characters in the empty positions.)
	//if replacement is empty delete str
	
	//if str is not found end
	
	//to find index of str
	char *pointer = strstr(editing_buffer, str) ;
	int sized ;
	int i = 0;
	int idx ;
	int inx ;
	int a ;
	int b ;
	int indexlast ;
	char newar[editing_buflen] ;
	int over = 0 ;
	
	if(strlen(str) == 0){return -1;}	
	
	//if has found str
	if (pointer != NULL){
		//find index of start of str
		int index = pointer - editing_buffer ;
		//remebering the index 
		idx = index ;
		inx = index ;
		indexlast = index ;
		//if out of range return
		if (index < offset){ return -1; }	
		//str bigger
		if(strlen(str) > strlen(replacement)){
				sized = strlen(str) - strlen(replacement) ;
				//loop to put prev stuff into new array
				for(b = 0; index> b;b++){
					newar[b] = editing_buffer[b] ;
					}
					//loop to put replacement in new array 
				for(int c = 0; c<strlen(replacement);c++){
					newar[index] = replacement[c] ;
					index++	;			
					}
					//loop to move stuff to left after str
				for(int d = index; d < editing_buflen ; d++){
					newar[d] = editing_buffer[b + strlen(str)];
					b++ ;
					}
					//add '\0'
				for (int e = editing_buflen; e > editing_buflen - sized ; e--){
					newar[e]='\0';
					}	
					//last letter of replacement index returned
					//putting back to normal array 
					for(int x=0; x<editing_buflen ;x++ ){
						editing_buffer[x] = newar[x] ;
					}	
					if (strlen(replacement)==0){return -1 ;}
					return indexlast + strlen(replacement) - 1;
			}
			//str smaller
		else if(strlen(str) < strlen(replacement)){
				sized = strlen(replacement) - strlen(str) ;		
				//loop to move stuff to the right after str
				for(index ; index < editing_buflen - strlen(str) ; index++ ){
						newar[index + strlen(replacement)] = editing_buffer[index + strlen(str)] ;
						if(index + strlen(replacement) > editing_buflen){ break;}									
				}
							
				//putting replacement into newar
				for(a = 0; a < strlen(replacement) ; a++){
						if(idx >= editing_buflen){ over = 5 ; break;}
						newar[idx] = replacement[a];
						idx++;
					}
					//need this otherwise error at index 0 
				//if (inx ==0 ) {return indexlast + strlen(replacement) - 1;}	
				for(inx = inx - 1; 0 < inx + 1; inx-- )	{
					//putting rest into newar
					newar[inx] = editing_buffer[inx] ;
					}
				//last char to be null	
				newar[editing_buflen - 1] = '\0' ;	
				//putting back to normal array 
				for(int x=0; x<editing_buflen ;x++ ){
						editing_buffer[x] = newar[x] ;
					}
				if(over != 0){return editing_buflen - 1 ;}
				return indexlast + strlen(replacement) - 1;
				
			}	
			//same s
		else{
				//loop to insert replacement
				int end = index + strlen(str) ;
				for(index ; index < end ; index ++){
						editing_buffer[index] = replacement[i] ;
						i++ ;				
					}	
					return indexlast + strlen(replacement) - 1;				
				}
		}
		//couldnt find str (pointer was null)
	else{
		return -1 ;
			}
	return -1;		
	}


void editor_view(int rows, int cols, char viewing_buffer[rows][cols], const char editing_buffer[], int editing_buflen, int wrap){
	//set every char in viewing buffer to null
	for(int row = 0; row<rows;row++){
		for(int col = 0; col<cols;col++){
			viewing_buffer[row][col] = '\0';
			}			
		}		
	int indexofbuf = 0;
	//if wrap is not 0
	if(wrap != 0){
		//looping thru col then row 
		for(int row = 0; row<rows;row++){
			for(int col = 0; col<editing_buflen;col++){
				//if found this return
			if(editing_buffer[indexofbuf] == '\0'){ return;}
			//adding to viewing_buffer if in range doing not with chars that are not
			//if found \n make a new line	
				if(editing_buffer[indexofbuf] == '\n'){indexofbuf++; break;} 
				//to make sure it fits in col
				if(col < cols - 1){
					viewing_buffer[row][col] = editing_buffer[indexofbuf];
					indexofbuf++;	
				} 					
				}						
			}		
		}
		//if wrap is 0
		if(wrap == 0){
			//loop thru col then row 
			for(int row = 0; row<rows;row++){
				for(int col = 0; col<editing_buflen;col++){	
				//if found this return	
				if(editing_buffer[indexofbuf] == '\0'){ return;}
				//if found \n make a new line	
				if(editing_buffer[indexofbuf] == '\n'){indexofbuf++; break;}
				if(col < cols -1){
				viewing_buffer[row][col] = editing_buffer[indexofbuf];
				
					}
				indexofbuf++;	
				}
			}
		}						
	}
	


int main (void){

    return 0;
}
