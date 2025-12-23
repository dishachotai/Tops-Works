//25 Convert array into asce and dec order 
#include<stdio.h>
int main()
{
    int arr[5];
    int i,j,temp;
    printf("Enter 5 numbers:\n");
    for(i=0;i<5;i++)
    {
        scanf("%d",&arr[i]);
    }
    // Sorting in Ascending Order
    for(i=0;i<5;i++)
    {
        for(j=i+1;j<5;j++)
        {
            if(arr[i]>arr[j])
            {
                temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }

    printf("\nArray in Ascending Order:\n");
    for(i=0;i<5;i++)
    {
        printf("%d ",arr[i]);
    }

    // Sorting in Descending Order
    for(i=0;i<5;i++)
    {
        for(j=i+1;j<5;j++)
        {
            if(arr[i]<arr[j])
            {
                temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }

    printf("\n\nArray in Descending Order:\n");
    for(i=0;i<5;i++)
    {
        printf("%d ",arr[i]);
    }
}

