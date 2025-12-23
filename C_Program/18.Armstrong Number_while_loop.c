//18 Program of Armstrong Number in C Using While Loop
#include<stdio.h>
int main()
{
    int num,temp,r,sum=0;
    printf("Enter Number: ");
    scanf("%d",&num);
	
	temp=num;
    sum=0;  // reset sum
    while(temp>0)
    {
        r=temp%10;
        sum=sum+(r*r*r);
        temp=temp/10;
    }

    if(sum==num)
        printf("%d is an Armstrong Number ", num);
    else
        printf("%d is not an Armstrong Number ", num);
}
