/**
 * myeditor.hh
 *
 * You must define a class that extends the EditingBuffer class in this file.
 * Consult the assignment handout for more information.
 *
 * Student ID: 300447549
 * Name: Daniel Eisen
 */

#include "editor.hh"
#include <iostream>
#include <cstring>
#include <string>


namespace editor
{
	//usable class extention of abstract class
	class MyEditingBuffer : public EditingBuffer
	{
	public:
		MyEditingBuffer() : EditingBuffer() {} //extends constructor

		// overwrites base virtual functions
        	bool replace(char c, char replacement, int offset);
	        int replace(std::string str, std::string replacement, int offset);
	        void justify(char **viewingBuffer, int rows, int cols);

	protected:
		//auxilary functions to aid in implementation
		int insertChar(char to_insert, int pos);
		int deleteChar(char to_delete, int offset);\
    };
}
