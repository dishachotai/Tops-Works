//Write a C++ program that demonstrates the use of variables and constants. Create
//variables of different data types and perform operations on them.
//Objective: Understand the difference between variables and constants.
#include<iostream>
using namespace std;
int main()
{
	int age=23;
	float height =5.5;
	string name="disha";
	char grade ='A';
	const float PI=3.14;
	age=age+2;
	height=height+0.2;
	cout<<"Age "<<age<<endl;
	cout<<"Name "<<name<<endl;
	cout<<"Height "<<height<<endl;
	cout<<"Grade "<<grade<<endl;
	cout<<"value of PI "<<PI<<endl;
}
