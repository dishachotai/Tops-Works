//Write a C++ program that demonstrates arithmetic, relational, logical, and bitwise
//operators. Perform operations using each type of operator and display the results.
//Objective: Reinforce understanding of different types of operators in C++
#include<iostream>
using namespace std;
int main()
{
	int num1,num2,add;
	cout<<"enter first number & second number ";
	cin>>num1>>num2;

    cout<<"\nArithmetic Operators"<<endl;
    cout<<"Addition: "<<num1+num2<<endl;
    cout<<"Subtraction: "<<num1-num2<<endl;
    cout<<"Multiplication: "<<num1*num2<<endl;
    cout<<"Division: "<<num1/num2<<endl;
    cout<<"Modulus: "<<num1%num2<<endl;

    cout<<"\nRelational Operators"<<endl;
    cout<<"num1 > num2 : "<<(num1>num2)<<endl;
    cout<<"num1 < num2 : "<<(num1<num2)<<endl;
    cout<<"num1 == num2 : "<<(num1==num2)<<endl;
    cout<<"num1 != num2 : "<<(num1!=num2)<<endl;

    cout<<"\nLogical Operators"<<endl;
    cout<<"(num1 > 0 && num2 > 0) : "<<(num1>0&&num2>0)<<endl;
    cout<<"(num1 > 0 || num2 > 0) : "<<(num1>0||num2>0)<<endl;
    cout<<"!(num1 > num2) : "<<!(num1>num2)<<endl;

    cout<<"\nBitwise Operators"<<endl;
    cout<<"num1 & num2 : "<<(num1&num2)<<endl;
    cout<<"num1 | num2 : "<<(num1|num2)<<endl;
    cout<<"num1 ^ num2 : "<<(num1^num2)<<endl;
}
