//Write a C++ program that calculates the factorial of 
//a number using recursion.
#include<iostream>
using namespace std;
// Recursive function to calculate factorial
int factorial(int n)
{
	if(n==0||n==1)
		return 1;// base condition
	else
		 return n*factorial(n-1); // recursive call	
}
int main()
{
	int num;
	cout<<"enter number ";
	cin>>num;
	cout<<"factorial "<<factorial(num);
	}	
