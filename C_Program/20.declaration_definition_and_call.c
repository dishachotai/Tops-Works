//20  Write a C program that calculates the factorial of a number using a 
//function Include function declaration, definition, and call. 
#include<stdio.h>
int factorial(int n)//function	
{
    int i,result=1;
    for(i=1;i<=n;i++)
    {
        result=result*i;// multiply current number with result
    }
    return result;//calling function
}

int main()
{
    int num, fact;
    printf("Enter a number: ");
    scanf("%d", &num);

    fact=factorial(num); // Function Call

    printf("Factorial of %d is %d\n",num,fact);
}

