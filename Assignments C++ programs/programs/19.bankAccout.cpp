//Create a class BankAccount with data members like balance and 
//member functions like deposit and withdraw. 
//Implement encapsulation by keeping the data members private.
#include<iostream>
using namespace std;
class bankAccout
{
	private:
		double balance;
	public:
	bankAccout(double initialBalance)	
	{
		balance=initialBalance;
	}
	void deposit(double amount)
	{
		if(amount>0)
		{
			balance =balance+amount;
			cout<<"Amount deposited successfully.\n";
        }
        else
        {
            cout<<"Invalid deposit amount.\n";
        }   
	}
	void withdraw(double amount)
	{
		 if(amount>0&&amount<=balance)
		{
			balance=balance-amount;
			cout<<"Amount withdrawn successfully.\n";
        }
        else
        {
            cout<<"Insufficient balance or invalid amount.\n";
        }
	}
	// Function to display balance
	void showbalance()
	{
		cout<<"Current Balance: "<<balance<<endl;
	}
};
int main()
{
	bankAccout a(1000);
	a.showbalance();
	a.deposit(500);
	a.showbalance();
	a.withdraw(300);
	a.showbalance();
	
}

