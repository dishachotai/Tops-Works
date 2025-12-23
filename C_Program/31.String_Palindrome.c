//Accept string from user and check it is palindrome or not
#include <stdio.h>

int main() {
    char str[100];
    int i, j, flag = 1;

    printf("Enter a string: ");
    scanf("%s", str);

    // Find string length manually
    for (j = 0; str[j] != '\0'; j++);

    // Check palindrome
    j--; // Move to last valid index
    for (i = 0; i < j; i++, j--) {
        if (str[i] != str[j]) {
            flag = 0;
            break;
        }
    }

    if (flag == 1)
        printf("String is Palindrome\n");
    else
        printf("String is Not Palindrome\n");

    return 0;
}

