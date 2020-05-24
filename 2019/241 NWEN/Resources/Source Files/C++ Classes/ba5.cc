#include "ba5.hh"

using namespace std;

void BankAccount::display() const
{
  cout << "Account Name: " << name << endl;
  cout << "Account Number: " << number << endl;
  cout << "Account Type: " << atype << endl;
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

int main(void) {
  string name;
  long number;
  int atype;

  cout << "Enter account name: ";
  getline(cin, name);
  cout << "Enter account number: ";
  cin >> number;
  cout << "Enter account type [0=Savings, 1=Checking]: ";
  cin >> atype;

  BankAccount ba(name, number, (enum AccountType)atype);
  while(true) {
    int choice;
    bool r;

    cout << endl;
    cout << "What do you want to do?" << endl;
    cout << "1: Display account information" << endl;
    cout << "2: Withdraw $50" << endl;
    cout << "3: Deposit $100" << endl;
    cout << "4: Close" << endl;
    cin >> choice;

    switch (choice) {
      case 1:
        ba.display();
        break;
      case 2:
        r = ba.withdraw(50);
        if(r) cout << "Withdrawal successful." << endl;
        else cout << "Withdrawal unsuccessful." << endl;
        break;
      case 3:
        ba.deposit(100);
        cout << "Deposit completed." << endl;
        break;
      case 4:
        r = ba.close();
        if(r) cout << "Account closed." << endl;
        else cout << "Account did not close." << endl;
        break;
    }
  }
}
