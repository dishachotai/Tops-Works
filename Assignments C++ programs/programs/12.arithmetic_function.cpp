//Write a C++ program that defines functions for basic arithmetic operations (add,
//subtract, multiply, divide). The main function should call these based on user input.
#include<iostream>
using namespace std;
int add(int a,int b)
{
	return a+b;
}
int subtract(int a,int b)
{
	return a-b;
}
int multiply(int a,int b)
{
	return a*b;
}
int divide(int a,int b)
{
	return a/b;
}
int main()
{
	int x,y,choice;
	cout<<"enter two value ";
	cin>>x>>y;
	
	cout<<"1.add";
	cout<<"2. subtract ";
	cout<<"3. multiply ";
	cout<<"4. divide ";
	cout<<"enter your choice ";
	cin>>choice;
	if(choice==1)
		cout<<"adddition ="<<add(x,y);
	else if(choice==2)
		cout<<"subtract ="<<subtract(x,y);
	else if(choice==3)
		cout<<"multiply ="<<multiply(x,y);
	else if(choice==4)
		cout<<"divide ="<<divide(x,y);			
}

