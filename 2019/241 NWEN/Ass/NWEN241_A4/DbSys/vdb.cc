//
// Created by Daniel on 17/05/2019.
//
#include "vdb.hh"
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
using namespace dbms2;

unsigned int VectorDbTable::rows() const
{ return table.size(); }

bool VectorDbTable::show(unsigned int rowN) const //display
{
	if (rowN >= rows()) { // check to ensure passed index is with the used rows
		cout << "Error: Row " << rowN << " does not exist." << endl;
		return false;
	}

	movie display = table.at(rowN); //tmp movie to use to display it's fields

	//output each of the fields
	cout << display.id << " | "
	     << display.title << " | "
	     << display.year << " | "
	     << display.director << endl;

	return true;
}

bool VectorDbTable::add(movie &addition)
{

	unsigned int previous = rows(); //size before add attempt
	table.push_back(addition); //add movie to end of vector
	return previous < rows(); //return if the table grew or not
}

bool VectorDbTable::remove(unsigned long id) //remove movies with matching id
{
	unsigned int previous = rows();

	//used string::erase and std::remove_if to implement the Erase–remove idiom to remove all elements with a matching ID
	table.erase(
		remove_if(table.begin(), table.end(), [&](movie const &current) {
				  return current.id == id;
			  }
		), table.end());

	return previous > rows(); // return if the table shrunk
}

movie *VectorDbTable::get(unsigned int rowN) const
{
	if (rowN >= rows()) { // check to ensure passed index is with the used rows
		cout << "Error: Row " << rowN << " does not exist." << endl;
		return nullptr;
	}
	return (&const_cast<movie &>(table.at(rowN))); //convert from const to returnable and return
}



