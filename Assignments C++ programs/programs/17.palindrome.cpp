//Write a C++ program to check if a given string is a 
//palindrome (reads the same forwards and backwards).
//Palindrome=the characters at the start and the end of the 
//string must be the same
#include<iostream>
using namespace std;
int main()
{
	char str[50];        // character array to store string
    int i,length=0;
    bool flag=true;    // assume string is palindrome
    cout<<"Enter a string: ";
    cin>>str;
    
    // Find length of the string manually
    for(i=0;str[i]!='\0';i++) // '\0' indicates the end of a string 
    {
        length++;
    }
    //palindrome
    for(i=0;i<length/2;i++)// length/2 avoids unnecessary comparisons
    {
        if(str[i]!=str[length-i-1])
        {
            flag=false;   // mismatch found
            break;
        }
    }
    //dispaly
 	if(flag == true)
        cout << "String is Palindrome";
    else
        cout << "String is Not Palindrome";

}
