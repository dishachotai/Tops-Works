//Write a C++ program that defines a class Calculator with functions for addition,
//subtraction, multiplication, and division. Create objectsto use these functions.
#include<iostream>
using namespace std;
class Calculator
{
	public:
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
};
int main()	
{
	Calculator cal;   // Creating object of Calculator class
	int x,y,choice;
	cout<<"enter two value ";
	cin>>x>>y;	
	cout<<"\n1.add ";
	cout<<"\n2.subtract ";
	cout<<"\n3.multiply ";
	cout<<"\n4.divide ";
	cout<<"\nenter your choice ";
	cin>>choice;
	if(choice==1)
		cout<<"adddition ="<<cal.add(x,y);
	else if(choice==2)
		cout<<"subtract ="<<cal.subtract(x,y);
	else if(choice==3)
		cout<<"multiply ="<<cal.multiply(x,y);
	else if(choice==4)
		cout<<"divide ="<<cal.divide(x,y);			
}

