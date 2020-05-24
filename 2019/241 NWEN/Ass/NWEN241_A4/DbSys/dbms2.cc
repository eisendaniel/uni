//
// Created by Daniel on 17/05/2019.
//
#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <vector>
#include "dbms2.hh"

using namespace std;
using namespace dbms2;

bool AbstractDbTable::loadCSV(const char *infn)
{
	ifstream input(infn); //open file to read
	string id, title, year, director;
	vector<movie> additions; //vector of movies to add

	if (!input) { //checks if file opened
		cout << "ERROR: Failed to open " << infn << endl;
		return false;
	}
	try { //attempts parsing
		while (!input.eof()) {
			//stores input from stream into a specified string until the specified delimiter
			//breaks if gets empty line, breaks
			if (!getline(input, id, ',')) { break; }
			if (!getline(input, title, ',')) { break; }
			if (!getline(input, year, ',')) { break; }
			if (!getline(input, director, '\n')) { break; }

			struct movie a = {}; //empty movie

			a.id = stoul(id); //converts string -> ulong, assigned to field
			strcpy(a.title, title.c_str()); //copies title(converted) to field
			a.year = (unsigned short)stoul(year); //converts string -> ulong cast and assigned to field
			strcpy(a.director, director.c_str()); //copies director(converted) to field

			additions.push_back(a); //add to additions vector
		}
	}
	catch (...) { //if for what ever reason, parsing failed, say so and return
		cout << "Error parsing file, check formatting\n";
		return false;
	}
	//if parsing was successful add them to the table
	for (unsigned int i = 0; i < additions.size(); ++i) {
		add(additions.at(i));
	}
	//close file and clear vector
	input.close();
	additions.clear();
	return true;
}
//saves table contents to
bool AbstractDbTable::saveCSV(const char *outfn)
{
	ofstream output(outfn); //open/create file to write to
	output.clear(); //clear file
	if (!output) { //checks if file opened
		cout << "ERROR: Failed to open " << outfn << endl;
		return false;
	}
	//write each row to a line in the file
	for (unsigned int i = 0; i < rows(); ++i) {
		output << get(i)->id << ','
		       << get(i)->title << ','
		       << get(i)->year << ','
		       << get(i)->director << '\n';
	}

	output.close(); //close file
	return true;

}