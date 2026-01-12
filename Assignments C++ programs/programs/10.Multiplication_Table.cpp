//Multiplication Table using for loop
#include<iostream>
using namespace std;
int main()
{
	int num;
	cout<<"enter multiplication table number ";
	cin>>num;
	for(int i=1;i<=10;i++)
	{
		cout<<num<<" * "<<i<< " = "<<num*i<<endl;
	}
}
