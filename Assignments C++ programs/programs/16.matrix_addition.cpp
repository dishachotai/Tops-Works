//Write a C++ program to perform matrix addition on two 2x2 matrices.
//o Objective: Practice multi-dimensional arrays.
#include<iostream>
using namespace std;
int main()
{
	int matrix1[2][2],matrix2[2][2];
	int ans[2][2];
	for(int i=0;i<2;i++)
	{
		for(int j=0;j<2;j++)
		{
		
			cout<<"enter element matrix 1 ";
			cin>>matrix1[i][j];
			cout<<"enter element matrix 2 ";
			cin>>matrix2[i][j];
		}
	}
	// for dispaly
	for(int i=0;i<2;i++)
	{	
		for(int j=0;j<2;j++)
		{	
			cout<<matrix1[i][j]<<"\t";
		}
		cout<<endl;
	}	
	cout<<"SECOND ARRAY"<<endl;
	// for diaplay matrix2
	for(int i=0;i<2;i++)
	{
		for(int j=0;j<2;j++)
		{	
			cout<<matrix2[i][j]<<"\t";
		}
		cout<<endl;
	}
	// additon 
	for(int i=0;i<2;i++)
	{
		for(int j=0;j<2;j++)
		{
			ans[i][j]=matrix1[i][j]+matrix2[i][j];
		}
	}
	cout<<"ANSWER"<<endl;
	for(int i=0;i<2;i++)
	{
		for(int j=0;j<2;j++)
		{
			cout<<ans[i][j]<<"\t";
		}
		cout<<endl;
	}
}
