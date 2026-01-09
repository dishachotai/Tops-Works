//22 WAP to reverse a string and check that the 
//string is palindrome or no e.g madam op;String is Palindrome/hello Not Palindrome
#include<stdio.h>
#include<string.h>
int main()
{
    char str[50], rev[50];
    int i,len,flag = 0;

    printf("Enter a string: ");
    scanf("%s",str);

    len=strlen(str);
    // Reverse the string
    // Copy characters from the end of str to the beginning of rev
    for(i=0;i<len;i++)
    {
        rev[i]=str[len-i-1];
    }
    rev[len] = '\0'; // Null-termination
    for(i=0;i<len;i++)// If any character is different,it is not a palindrome
    {
        if(str[i]!=rev[i])
        {
            flag=1;
            break;
        }
    }
    printf("Reversed String: %s\n", rev);

    if(flag==0)
        printf("String is Palindrome\n");
    else
        printf("String is Not Palindrome\n");
}
