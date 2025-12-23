//Write a C program to calculate profit and loss on a transaction
#include<stdio.h>
main()
{
	float costPrice, sellingPrice, profit, loss;

	printf("Enter cost price:");
	scanf("%f",&costPrice);
	
	printf("Enter selling price:");
	scanf("%f",&sellingPrice);
	
	if(sellingPrice > costPrice)
	{
		profit=sellingPrice- costPrice;
		printf("profit=%f",profit);
		
			
	}
	else if(costPrice > sellingPrice) 
	{
        loss = costPrice - sellingPrice;
        printf("Loss = %f\n", loss);
    }
    else
    {
    	 printf("No Profit, No Loss.\n");
	}
}
