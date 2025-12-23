//Write a C program that includes variables, constants, and comments. Declare
//and use different data types (int, char, float) and display their values.
#include <stdio.h>
main()
{
    
    int age = 23;                
    char grade = 'A';         
    float height = 5.9;      
    const int BIRTH_YEAR = 2002;  

    printf("Age: %d\n", age);
    printf("Grade: %c\n", grade);
    printf("Height: %.1f\n", height);
    printf("Birth Year (constant): %d\n", BIRTH_YEAR);
}

