//Write a C++ program that takes a student’s marks as input 
//and calculates the grade based on if-else conditions
#include<iostream>
using namespace std;
int main()
{
	int mark;
	cout<<"enter student marks ";
	cin>>mark;
	if(mark>=90)
	{
		cout<<"grade A";
	}
	else if(mark>=75)
	{
		cout<<"grade B";
	}
	else if(mark>=60)
	{
		cout<<"grade C";
	}
	else if(mark>=40)
	{
		cout<<"grade D";
	}
	else
	{
		cout<<"FAIL....";
	}
}
