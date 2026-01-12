//Write a program that implements inheritance using a base class Person and 
//derived classes Student and Teacher. Demonstrate reusability through inheritance.
//o Objective: Learn the concept of inheritance.
// Program to demonstrate inheritance in C++
#include<iostream>
using namespace std;
class person
{
	protected:
	string name;
	int age;
	public:
	void getpersondata()
	{
		cout<<"enter name ";
		cin>>name;
		cout<<"enter age ";
		cin>>age;	
	}	
	void showpersondata()
	{
		cout<<"name:"<<name<<endl;
		cout<<"age:"<<age<<endl;
	}
};
class student:public person
{
	private:
	int rollno;
	public:
	void getstudentdata()
	{
		getpersondata();
		cout<<"enter roll number ";
		cin>>rollno;
	}
	void showstudentdata()
	{
		showpersondata();
		cout<<"roll_no"<<rollno<<endl;
		
	}
};
class teachar :public person
{
	private:
		string subject;
	public:
	void getteacherdata()
	{
		getpersondata();
		cout<<"enter subject ";
		cin>>subject;		
	}	
	void showteacherdata()
	{
		showpersondata();
		cout<<"subject "<<subject<<endl;
	}
};
int main()
{
	student s;
	teachar t;
	cout<<"Enter Student details\n";
	s.getstudentdata();
	cout<<"Student information\n";
	s.showstudentdata();
	
	cout<<"enter teacher details\n";
	t.getteacherdata();
	cout<<"teacher information\n";
	t.showteacherdata();
}
