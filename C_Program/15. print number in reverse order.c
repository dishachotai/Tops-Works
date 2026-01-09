//WAP to print number in reverse order e.g.: number = 64728 ---> reverse = 82746
#include<stdio.h>
int main()
{
    int num,rev=0,rem;

    printf("Enter a number: ");
    scanf("%d",&num);
    while(num>0)
    {
        rem=num%10;   // get last digit of number   
        rev=rev*10+rem;// add digit to reverse number
        num=num/10;    //remove last digit from number    
    }
    printf("Reverse Number = %d",rev);
}


