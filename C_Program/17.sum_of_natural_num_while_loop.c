//17 Calculate the Sum of Natural Numbers Using the While Loop
#include<stdio.h>
int main()
{
	int n,i=1,sum=0;
	printf("Enter number ");
	scanf("%d",&n);
		// Loop runs while value of i is less than or equal to n
	while(i<=n)
	{
		sum=sum+i;
		i++;
	}
	    printf("Sum of %d natural numbers = %d", n, sum);

}

