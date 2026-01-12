//Write two small programs: one using Procedural Programming (POP) to calculate the
//area of a rectangle, and another using Object-Oriented Programming (OOP) with a
//class and object for the same task.
#include<iostream>
using namespace std;
class rectangle
{
	public:
	int length,width;
	void getdata()
	{
	cout<<"enter length & width ";
	cin>>length>>width;
	}
	void area()
	{
		cout<<"area of rectangle "<<length * width ;	
	} 
};
int main()
{
	rectangle r;
	r.getdata();
	r.area();
}
