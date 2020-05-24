//
// Created by Daniel on 28/04/2019.
//

#include <cstdlib>
#include <cstdio>
#include "dbms.hh"

using namespace dbms;

/*Constructor implementation
 * malloc allocates 5 chunks album sized memory
 * set field accordingly
 * */
DbTable::DbTable()
{
	table = (album *)malloc(5 * sizeof(album));
	rowsTotal = 5;
	rowsUsed = 0;
}
/*Destructor implementation
 * frees the dynamically allocated memory
 * */
DbTable::~DbTable()
{ free(table); }

bool DbTable::show(unsigned int row_n)
{
	if (row_n >= rowsUsed) return false; // check to ensure passed index is with the used rows
	printf("%lu | %s | %d | %s\n", // display
	       table[row_n].id,
	       table[row_n].title,
	       table[row_n].year,
	       table[row_n].artist);
	return true;
}

bool DbTable::add(album &to_add)
{        //if table is full, reallocated 5 more rows, and increase total field
	if (rowsUsed >= rowsTotal) {
		table = (album *)realloc(table, (rowsTotal + 5) * sizeof(album));
		if (table == nullptr) return false; //return on allocation failure
		rowsTotal += 5;
	}
	//adds passed album to first free row and increments rows used
	table[rowsUsed++] = to_add;

	return true;
}

bool DbTable::remove(unsigned long id)
{
	bool found = false; //flag to indicate if id found
	// loops through used rows
	for (unsigned int i = 0; i < rowsUsed; ++i) {
		found = table[i].id == id ? true : found; // ternary to set found if a matching id is found
		if (found) { table[i] = table[i + 1]; } //once found, moves following albums up (overwriting to remove)
	}
	// if an id is found and there are more than 5 empty rows but table isn't empty
	if (found && (rowsTotal - (--rowsUsed) >= 5) && (rowsUsed > 0)) {
		//contract memory of table by 5
		table = (album *)realloc(table, (rowsTotal - 5) * sizeof(album));
		rowsTotal -= 5;
	}
	//ternary to return false is memory allocation failed, else is a id to remove was found
	return table == nullptr ? false : found;
}
