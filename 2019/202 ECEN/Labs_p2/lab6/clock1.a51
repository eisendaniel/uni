		ORG	0H
		MOV	R0,#20
							//Set time value to 00:00:00 
		MOV	R1,#0			//seconds
		MOV	R2,#0			//minutes
		MOV	R3,#0			//hours
		ACALL SETDIS		//initialise the display
		MOV TMOD,#0x01
		
REPEAT	MOV	TH0,#0x3C
		MOV	TL0,#0xB0
		SETB TR0
		
WAIT:	JNB TF0,WAIT
		CLR TR0
		CLR TF0
     	DJNZ R0,REPEAT
		MOV	TH0,#0x3C
		MOV	TL0,#0xB0
		SETB TR0
		MOV	R0,#19
		CPL P2.3			//output every second
		ACALL	INCT			//Increment time
		ACALL	DIST			//Display time
		AJMP	WAIT
		
SETDIS: MOV	A,#30H			//Display initialisation routine
		ACALL	COMNWRT    	
		ACALL	DELAY1      	
		MOV	A,#0CH     	
		ACALL	COMNWRT		
		ACALL	DELAY1		
		MOV	A,#01     	
		ACALL	COMNWRT    	
		ACALL	DELAY2		
		MOV	A,#06H     	
		ACALL	COMNWRT    	
		ACALL	DELAY1		
		RET
		
INCT:	//Update time count routine
		MOV A,R1			//seconds 
		ADD A,#01H			//increments by 1
		DA A				//convert to BCD
		MOV R1,A			//store in registor
		CJNE A,#60H,INCE	//if not 60, return
		MOV R1,#00H			//else set to 0 and continue
		
		MOV A,R2			//minutes
		ADD A,#01H			
		DA A
		MOV R2,A
		CJNE A,#60H,INCE	//if not 60, return
		MOV R2,#00H			//else set to 0 and continue
		
		MOV A,R3			//hours
		ADD A,#01H
		DA A
		MOV R3,A
		CJNE A,#24H,INCE	//if not 24, return
		MOV R3,#00H			//else set to 0 and continue
		
INCE:	RET

DMSB:	RR A			    //display MOST significant bit
		RR A				//rotate nibble
		RR A
		RR A
		ANL A,#0FH			//bitwise AND, masking upper nibble 
		ORL A,#30H			//bitwise OR, convert to ASCII
		ACALL	DATAWRT		
		ACALL	DELAY1
		
		RET
							//display LEAST significant bit
DLSB:	ANL A,#0FH			//bitwise AND, masking upper nibble 
		ORL A,#30H			//bitwise OR, convert to ASCII
		ACALL	DATAWRT
		ACALL 	DELAY1
		
		RET

DCOL:	MOV A,#3AH			//display colon
		ACALL	DATAWRT
		ACALL 	DELAY1

		RET
		
DIST:	MOV	A,#01     		//Update display routine
		ACALL	COMNWRT    	//Reset display
		ACALL	DELAY2	
		
		MOV	A,R3   		    //display hours
		ACALL	DMSB		//MSB subroutine 
		MOV	A,R3 
		ACALL	DLSB		//LSB subroutine 
		ACALL	DCOL		//COLON subroutine 
		
		
		MOV A,R2			//display minutes
		ACALL	DMSB		//MSB subroutine 
		MOV	A,R2 
		ACALL	DLSB		//LSB subroutine 
		ACALL	DCOL		//COLON subroutine 
		
		
		MOV A,R1			//display seconds
		ACALL DMSB			//MSB subroutine 
		MOV	A,R1 
		ACALL DLSB			//LSB subroutine 
		
		RET
		
COMNWRT:                   	
		MOV	P1,A       	
		CLR	P2.0       	
		CLR	P2.1       	
		SETB	P2.2       	
		ACALL	DELAY1		
		CLR	P2.2       	
		RET
DATAWRT:                   	
		MOV	P1,A       	
		SETB	P2.0       	
		CLR	P2.1       	
		SETB	P2.2       	
		ACALL	DELAY1		
		CLR	P2.2       	
		RET

DELAY1:	MOV	R5,#30 			//Short delay
LP1: 	DJNZ	R5,LP1		
      	RET
		
DELAY2:	MOV	R5,#50 			//long delay 
HERE2:	MOV	R4,#50	
HERE: 	DJNZ	R4,HERE 		
     	DJNZ	R5,HERE2
      	RET		
	
		END