//WAP to take 10 no. Input from user find out below values a. How many Even
//numbers are there b. How many odd numbers are there c. Sum of even
//numbers d. Sum of odd numbers?
#include<stdio.h>
main()
{
	
	int num, i, evencount = 0, oddcount = 0, evensum = 0, oddsum = 0;
	printf("Enter 10 numbers:\n");
	for(i=1; i<=10; i++)
	{
		scanf("%d",&num);
	
		if(num % 2==0)
		{
			evencount++;
			evensum=evensum + num;
		}
		else{
			oddcount++;
			oddsum=oddsum+num;
		}
	}
	printf("Total Even Numbers: %d\n",evencount);
	printf("Total odd Numbers :%d\n",oddcount);
	printf("sum of Even numbers :%d\n",evensum);
	printf("sum of odd Numbers :%d\n",oddsum);
	
	
}
