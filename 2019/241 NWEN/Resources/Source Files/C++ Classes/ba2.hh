/* Second cut */
#include <iostream>

/**
 * Add const to display member function since will not modify
 * any of the member variables
 */

using namespace std;

class BankAccount {
public:
  /* Display acccount information */

  void display() const;

  /* Deposit amount into account */
  void deposit(double amount);

  /* Withdraw amount from account */
  /* return true if sucessful, otherwise false */
  bool withdraw(double amount);

  /* Close account */
  /* return true if sucessful, otherwise false */
  bool close();
private:
  /* Account name */
  string name;

  /* Account number */
  long number;

  /* Account type: 0 = savings, 1 = checking */
  int atype;

  /* Account balance */
  double balance;

  /* Account status: 0 = closed, 1 = open/active */
  int status;
};
