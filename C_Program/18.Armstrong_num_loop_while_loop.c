//18 Program of Armstrong Number in C Using While Loop
#include<stdio.h>
int main()
{
    int num,temp,r,sum=0;
	printf("Enter Number: ");
    scanf("%d",&num);
	
	temp=num;
        // Loop runs until all digits of the number are processed	
    while(temp>0)
    {
        r=temp%10;// extract last digit
        sum=sum+(r*r*r); // add cube of digit to sum
        temp=temp/10;// remove last digit
    }
    // Check if sum of cubes is equal to original number
    if(sum==num)
        printf("%d is an Armstrong Number ",num);
    else
        printf("%d is not an Armstrong Number ",num);
}
