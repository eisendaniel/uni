//
// Created by Daniel on 17/05/2019.
//

#include "lldb.hh"
#include <cstdlib>

using namespace dbms2;

LinkedListDbTable::LinkedListDbTable()
{
	table = (node *)malloc(sizeof(node));
	tableSize = 0;
}

LinkedListDbTable::~LinkedListDbTable()
{ delete[] table; }

unsigned int LinkedListDbTable::rows() const
{ return tableSize; }

bool LinkedListDbTable::show(unsigned int) const
{ return false; }

bool LinkedListDbTable::add(dbms2::movie &)
{ return false; }

bool LinkedListDbTable::remove(unsigned long)
{ return false; }

movie *LinkedListDbTable::get(unsigned int) const
{ return new movie; }