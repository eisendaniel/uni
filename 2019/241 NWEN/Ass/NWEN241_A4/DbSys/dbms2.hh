//
// Created by Daniel on 17/05/2019.
//

#ifndef _DBMS2_HH_
#define _DBMS2_HH_

namespace dbms2
{

//base data type to be stores/accessed
struct movie {
	unsigned long id;
	char title[50];
	unsigned short year;
	char director[50];
};

class AbstractDbTable { //abstract class declare
 public:
	//to avoid undefined behaviour caused by deleting object of polymorphic class type
	virtual ~AbstractDbTable() = default;

	//pure virtual prototypes to be overridden by sub classes [to add, show,
	virtual unsigned int rows() const = 0;
	virtual bool show(unsigned int) const = 0;
	virtual bool add(movie &) = 0;
	virtual bool remove(unsigned long) = 0;
	virtual movie *get(unsigned int) const = 0;

	//member function prototypes to load and save
	bool loadCSV(const char *);
	bool saveCSV(const char *);

};

}

#endif //_DBMS2_HH_
