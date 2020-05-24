//
// Created by Daniel on 28/04/2019.
//

#ifndef DATABASECOLLECTION_DBMS_HH
#define DATABASECOLLECTION_DBMS_HH

namespace dbms
{
//c-struct defining datatype to be stored by DbTable class
struct album {
	unsigned long id;
	char title[100];
	unsigned short year;
	char artist[100];
};

class DbTable {
 private:
	//private fields
	album *table;
	unsigned int rowsTotal, rowsUsed;
 public:
	//default constructors and destructors
	DbTable();
	~DbTable();

	//field getter methods
	unsigned int rows()
	{ return rowsUsed; }

	unsigned int allocated()
	{ return rowsTotal; }

	//function prototypes to add, remove and display albums
	bool add(album &);
	bool remove(unsigned long);
	bool show(unsigned int);
};

}
#endif //DATABASECOLLECTION_DBMS_HH
