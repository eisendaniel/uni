/* Fourth cut */
#include <iostream>

/**
 * With constructor where name, number and type given
 */

using namespace std;

enum AccountType { SAVINGS, CHECKING };
enum AccountStatus { CLOSED, ACTIVE };

class BankAccount {
public:
  /* Constructor with name, number and type specified */
  BankAccount(string s, long l, enum AccountType t) : name(s),
  number(l), atype(t), balance(0), status(ACTIVE) {}

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
  enum AccountType atype;

  /* Account balance */
  double balance;

  /* Account status: 0 = closed, 1 = open/active */
  enum AccountStatus status;
};
