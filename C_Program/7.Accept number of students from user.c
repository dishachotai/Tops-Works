//Accept number of students from user.
// I need to give 5 apples to each student. How many apples are required?
#include<stdio.h>
main()
{
	int apple,students;
	printf("Enter the number of students:");
	scanf("%d",&students);
	apple=students*5;
	
	printf("Total Apples :%d\n	",apple);
}
