//Write a C program to print numbers from 1 to 10 using all three types of loops
//(while, for, do-while).
#include <stdio.h>
main()
{
    int i;

    // while loop
    printf("Numbers from 1 to 10 using while loop:\n");
	// while loop → Condition is checked first, then loop executes.
    i = 1;
    while (i <= 10) 
	{
        printf("%d ", i);
        i++;
    }
    printf("\n\n");
    // for loop
	//for loop → Initialization, condition, and increment in one line.
    printf("Numbers from 1 to 10 using for loop:\n");
    for (i = 1; i <= 10; i++)
	 {
        printf("%d ", i);
    }
	 printf("\n\n");
    // do-while loop
	// do-while loop → Executes at least once, condition checked later.
    printf("Numbers from 1 to 10 using do-while loop:\n");
    i = 1;
    do {
        printf("%d ", i);
        i++;
    } while (i <= 10);
    printf("\n");
}


