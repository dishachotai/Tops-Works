//Find length of string which is entered by 
//user without using inbuilt function.
#include <stdio.h>
int main() 
{
    char str[100];
    int i = 0;

    printf("Enter a string: ");
    scanf("%s", str);

    // Calculate length manually
    while(str[i] != '\0') 
	{
        i++;
    }
    printf("Length of string: %d\n", i);
}

