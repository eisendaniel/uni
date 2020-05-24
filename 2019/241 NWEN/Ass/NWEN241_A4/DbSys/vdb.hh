//
// Created by Daniel on 17/05/2019.
//

#ifndef _VDB_HH_
#define _VDB_HH_

#include <vector>
#include "dbms2.hh"

using namespace std;
namespace dbms2
{

class VectorDbTable : public AbstractDbTable {
 private:
	vector<movie> table; //storage for movies

 public:

	unsigned int rows() const override; //prototype returns table size

	//function prototypes to add, remove, get , and display movies
	bool show(unsigned int) const override;
	bool add(movie &) override;
	bool remove(unsigned long) override;
	movie *get(unsigned int) const override;
};

}

#endif //_VDB_HH_
