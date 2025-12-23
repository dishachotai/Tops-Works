//18 Program of Armstrong Number in C Using For Loop
#include<stdio.h>
int main()
{
    int num,temp,r,sum=0;
    printf("Enter Number: ");
    scanf("%d",&num);

    // FOR LOOP
    temp=num;
    sum=0;  // reset sum
	for(temp=num;temp>0;temp=temp/10)
    {
        r=temp%10;
        sum=sum+(r*r*r);
    }
    if(sum==num)
        printf("%d is an Armstrong Number ", num);
    else
        printf("%d is not an Armstrong Number ", num);
    
    
}

