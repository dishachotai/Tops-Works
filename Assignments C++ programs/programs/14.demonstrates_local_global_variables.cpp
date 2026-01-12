//Write a program that demonstrates the difference between local 
//and global variables in C++. Use functions to show scope.
#include<iostream>
using namespace std;
int x=10;
void show()
{
	int x = 20;
    cout<<"local function = "<<x<<endl;//Global -declared outside all functions
}
int main()
{
	cout<<"global function = "<<x<<endl;//Local -inside function only
    show();
}
