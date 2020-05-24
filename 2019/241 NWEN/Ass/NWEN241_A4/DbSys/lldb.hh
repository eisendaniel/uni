//
// Created by Daniel on 17/05/2019.
//

#ifndef _LLDB_HH_
#define _LLDB_HH_

#include "dbms2.hh"

namespace dbms2
{

struct node {
	movie data;
	node *next;
};

class LinkedListDbTable : public AbstractDbTable {
 private:
	node *table;
	unsigned int tableSize;

 public:
	LinkedListDbTable();
	~LinkedListDbTable() override ;

	unsigned int rows() const override;
	//function prototypes to add, remove, get ,and display movies
	bool show(unsigned int) const override;
	bool add(movie &) override;
	bool remove(unsigned long) override;
	movie *get(unsigned int) const override;
};

}
#endif //_LLDB_HH_
