
# findcomport.py
# Version 1.0
# Hamish Colenso
# 28 March 2019

# This script attempts to run pyserial and locate the available com ports on the system
# it then returns what comports are available to the shell.

import serial.tools.list_ports 
#pyserial allows the use of comports in a python program
import subprocess 
# subprocess is a threaded command for using shell programs in a python script
import shlex 
# shlex provides the shlex.split command used to break up the command string into arguments for subprocess.Popen

# Find the active serial ports
ports = serial.tools.list_ports.comports()
print(*[port.device for port in ports])

# for each port in ports run the batchisp command

# subprocess
print("Programming the AT89C51AC3 development board using batchisp.")
print("Iterating through available com ports to find the board.")
for port in ports:
	args = shlex.split("batchisp.exe -device AT89C51AC3 -hardware RS232 -port %s -baudrate 9600 -operation ONFAIL ABORT MEMORY FLASH LOADBUFFER main.hex PROGRAM" %(port.device))
	print("Executing batchisp with the following options:")
	print(args)
	print("")
	try:
		shelloutput = subprocess.Popen(args,universal_newlines=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
		#timer.start()
		shelloutput.wait()
		stdout,stderr = shelloutput.communicate()
		print(stdout)
		print(stderr)
	except:
		print("subprocess Popen failed. batchisp may not be on the system path.")



		
	
