//21 WAP to find factorial using recursion
#include<stdio.h>
int factorial(int n)
{
    int i,result=1;

    for(i=1;i<=n;i++)
    {
        result=result*i;
    }
    return result;
}
int main()
{
    int num,fact;

    printf("Enter a number: ");
    scanf("%d", &num);

    fact=factorial(num); // Function Call

    printf("Factorial of %d is %d\n", num,fact);
}


