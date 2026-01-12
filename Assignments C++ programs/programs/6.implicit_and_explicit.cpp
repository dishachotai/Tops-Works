//Write a C++ program that performs both implicit and explicit type conversions and
//prints the results.
#include<iostream>
using namespace std;
int main()
{
	int a=10;
	float b=a;
	cout<<"int a "<<a<<endl;
	cout<<"float b "<<b<<endl;
	float x=12.7;
	int y=(int)x;// float to int using explicit cast
	cout<<" float x "<<x<<endl;
	cout<<"int y "<<y<<endl;
	
	
}
