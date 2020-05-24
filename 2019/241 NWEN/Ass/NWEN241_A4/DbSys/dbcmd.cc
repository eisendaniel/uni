//
// Created by Daniel on 18/05/2019.
//
#include <iostream>
#include <cstring>
#include "vdb.hh"

using namespace std;
using namespace dbms2;

enum arg { showall, show, invalid }; // enum to tidy up switch

arg eval(const char *caseStr) //evaluates given cstring to matching enum value
{
	if (strcasecmp(caseStr, "showall") == 0) return showall;
	if (strcasecmp(caseStr, "show") == 0) return show;
	return invalid; //all other inputs
}

int main(int argc, char const *argv[])
{
	//instancing database
	VectorDbTable *dataBase;
	dataBase = new VectorDbTable();

	//load from file
	dataBase->loadCSV("default.csv");

	if (argc > 1) { // if execution has user giver arguments
		switch (eval(argv[1])) {
			case showall:
				cout << endl;
				//loops thru database, showing each row
				for (unsigned int i = 0; i < dataBase->rows(); ++i) {
					dataBase->show(i);
				}
				cout << endl;
				break;

			case show:
				if (argc > 2) { //if user has provided a index argument
					try { dataBase->show((unsigned int)stoul(string(argv[2]))); } //converts cstring->string->integer
					catch (...) {
						cout << "invalid row index" << endl;
					} //catching if conversion fails, ie. argv[2] is not a number
				} else { cout << "Please provide row index" << endl; } //no argument given
				break;
			default: //all other cases
				cout << "invalid arguments given" << endl;
				break;
		}
	}

	delete dataBase; //frees memory

	return 0;
}