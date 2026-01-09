//Write a C program to demonstrate pointer usage. 
//Use a pointer to modify the value of a variable and print the result.
#include <stdio.h>
main() 
{
    int num=10;       
    int *ptr;                // declare a pointer variable to store address of an integer
       
    ptr=&num;         
    printf("Original value of num: %d\n", num);
    *ptr=25;            // change value at the memory location pointed by ptr
          
    printf("Modified value of num: %d\n", num);
}
