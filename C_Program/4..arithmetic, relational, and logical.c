//Write a C program that accepts two integers from the user and performs
//arithmetic, relational, and logical operations on them. Display the results.
#include <stdio.h>
main() {
    int a, b;
    printf("Enter two integers: ");
 scanf("%d %d", &a, &b);

// Arithmetic operations
    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);
    if (b != 0)
        printf("Division: %.2f\n", (float)a / b);
    else
        printf("Division: Undefined (division by zero)\n");

    // Relational operations
    printf("a == b: %d\n", a == b);
    printf("a != b: %d\n", a != b);
    printf("a > b: %d\n", a > b);
    printf("a < b: %d\n", a < b);
    printf("a >= b: %d\n", a >= b);
    printf("a <= b: %d\n", a <= b);

    // Logical operations
    printf("(a > 0 && b > 0): %d\n", (a > 0 && b > 0));
    printf("(a > 0 || b > 0): %d\n", (a > 0 || b > 0));
    printf("!(a == b): %d\n", !(a == b));
}

