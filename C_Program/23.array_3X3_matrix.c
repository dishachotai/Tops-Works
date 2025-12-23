//23Write a C program that stores 5 integers in a one-dimensional array and prints them. 
//Extend this to handle a two-dimensional array (3x3 matrix) and calculate the sum of all elements.
#include<stdio.h>

int main()
{
    int arr1[5];
    int arr2[3][3];
    int i, j, sum = 0;
    printf("Enter 5 integers:\n");
    for(i=0;i<5;i++)
    {
        scanf("%d",&arr1[i]);
    }
    //1d dispaly
    printf("\n1D Array Elements:\n");
    for(i=0;i<5;i++)
    {
        printf("%d ",arr1[i]);
    }
    // 2D Array
    printf("\n\nEnter 9 elements for 3x3 Matrix:\n");
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            scanf("%d",&arr2[i][j]);
        }
    }

    // Display & Sum of 2D Array
    printf("\n3x3 Matrix:\n");
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("%d ",arr2[i][j]);
            sum +=arr2[i][j];
        }
        printf("\n");
    }
    printf("\nSum of all elements in matrix = %d\n",sum);

}

