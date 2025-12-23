//19 WAP to accept 5 numbers from user and display in reverse order using for loop and array
#include<stdio.h>
int main()
{
    int num[5];
    int i;

    printf("Enter 5 numbers:\n");
    for(i=0;i<5;i++)
    {
        scanf("%d", &num[i]);
    }

    //reverse order
    printf("\nNumbers in Reverse Order:\n");
    for(i=4;i>=0;i--)
    {
        printf("%d ",num[i]);
    }
}

