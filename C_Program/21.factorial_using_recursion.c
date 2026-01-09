//21 WAP to find factorial using recursion
//Recursion is a programming technique in which a function calls 
//itself to solve a problem until a base condition is reached.
#include<stdio.h>
int factorial(int n)//function
{
    if(n==0||n==1)
        return 1;           
	else
        return n*factorial(n-1); // recursive call
}
int main()
{
    int num,fact;
    printf("Enter a number: ");
    scanf("%d", &num);    
    fact = factorial(num);  // function call
    printf("Factorial of %d is %d", num,fact);

}
