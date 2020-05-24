#include "ba3.hh"

using namespace std;

void BankAccount::display() const
{
  cout << "Account Name: " << name << endl;
  cout << "Account Number: " << number << endl;
  cout << "Account Type: " << type << endl;
  cout << "Balance: " << balance << endl;
  cout << "Status: " << status << endl;
}

void BankAccount::deposit(double amount)
{
  balance += amount;
}

bool BankAccount::withdraw(double amount)
{
  if(amount <= balance) {
    balance -= amount;
    return true;
  }
  return false;
}

bool BankAccount::close()
{
  if(balance == 0)
    return true;
  return false;
}
