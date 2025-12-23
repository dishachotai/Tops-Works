//26 Find max element from the array
#include<stdio.h>
int main()
{
    int arr[5];
    int i,max;

    printf("Enter 5 numbers:\n");
    for(i=0;i<5;i++)
    {
        scanf("%d",&arr[i]);
    }
    max=arr[0]; // Assume first element is max
    for(i=1;i<5;i++)
    {
        if(arr[i]>max)
        {
            max=arr[i];
        }
    }
    printf("\nMaximum element in array = %d\n", max);
}

