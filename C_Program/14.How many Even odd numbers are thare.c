//WAP to take 10 no. Input from user find out below values a. How many Even
//numbers are there b. How many odd numbers are there c. Sum of even
//numbers d. Sum of odd numbers?
#include<stdio.h>
int main()
{
	int num,i,evencount,oddcount,evensum,oddsum;
	printf("Enter 10 numbers:\n");
	for(i=1;i<=10;i++)
	{
		scanf("%d",&num);
		if(num%2==0)
		{
			evencount++;			 		// Increase even count
           evensum=evensum+num;				// Add number to even sum 
		}
		else{
			oddcount++; 					// Increase odd count
			oddsum=oddsum+num;				// Add number to add sum 
		}
	}
	printf("Total Even Numbers: %d\n",evencount);
	printf("Total odd Numbers :%d\n",oddcount);
	printf("sum of Even numbers :%d\n",evensum);
	printf("sum of odd Numbers :%d\n",oddsum);
}
