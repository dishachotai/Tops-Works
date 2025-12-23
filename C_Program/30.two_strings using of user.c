#include <stdio.h>
void myStrcat(char str1[], char str2[]) 
{
    int i=0,j=0;

    // Find the end of first string
    while (str1[i] != '\0') 
	{
        i++;
    }

    // Append second string to first
    while (str2[j] != '\0') {
        str1[i] = str2[j];
        i++;
        j++;
    }

    // Add null terminator at the end
    str1[i] = '\0';
}

int main() 
{
    char str1[100], str2[100];

    printf("Enter first string: ");
    scanf("%s", str1);

    printf("Enter second string: ");
    scanf("%s", str2);

    myStrcat(str1, str2);
    printf("\nConcatenated String: %s\n", str1);
}

