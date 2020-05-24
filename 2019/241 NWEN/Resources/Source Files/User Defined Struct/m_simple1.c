#include <stdio.h>		// for output

struct Point
{
   int x, y;
};

int main(void)
{
  //Declaring a Point as p1
  struct Point p1 = {0, 1};

   // Accesing members of point p1
   p1.x = 20;
   printf ("x = %d, y = %d \n", p1.x, p1.y);
  return 0;
}
