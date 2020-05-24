//
// Created by Daniel on 7/04/2019.
//

#ifndef FILES_CPP_EDITOR2_HH
#define FILES_CPP_EDITOR2_HH

namespace editor2 //namespace defined
{
class EditorUtilities //class declared
{
 public:
	//public and static function prototyped that allow non instanced access
	static int countWords(const char *, int);
	static int searchMultipleNoCase(const char *, int, std::string, int *, int);
};
}

#endif //FILES_CPP_EDITOR2_HH
