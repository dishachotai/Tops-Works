//Write a C++ program that accepts an array of integers, 
//calculates the sum and average, and displays the results.
#include<iostream>
using namespace std;
int main()
{
	int arr[10],sum=0,num;
	float average;
	cout<<"enter number ";
	cin>>num;
	for(int i=0;i<num;i++)
	{
		cin>>arr[i];
		sum=sum+arr[i];// calculate sum
	}
	average =(float)sum/num;// calculate average
	cout<<"sum "<<sum<<endl;
	cout<<"average "<<average<<endl;
}
