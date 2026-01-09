//29 Program to join two strings using a user-defined function
// without using inbuilt string functions like strcat()
#include <stdio.h>
void joinStrings(char s1[],char s2[])
{
    int i=0,j=0;

    while(s1[i]!='\0')
    {
        i++; 
    }
    // Copy characters
    while(s2[j]!='\0')
    {
        s1[i]=s2[j];  // append character
        i++;
        j++;
    }
    s1[i]='\0';   // add null character at the end
}
int main()
{
    char str1[100], str2[50];
    printf("Enter first string: ");
    scanf("%s", str1);
    printf("Enter second string: ");
    scanf("%s", str2);
    joinStrings(str1,str2);   // function call
    printf("Joined String: %s\n",str1);
}
