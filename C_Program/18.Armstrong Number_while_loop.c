//18 Program of Armstrong Number in C Using For Loop
#include<stdio.h>
int main()
{
    int num,temp,r,sum;
    printf("Enter Number: ");
    scanf("%d", &num);
     // FOR LOOP to process each digit of the number
    // temp=num(copy original number)
    //temp>0(run till all digits are processed)
    //temp=temp/10(remove last digit each time)
    
	temp = num;
	for(temp=num;temp>0;temp=temp/10)
    {
        r=temp%10;// extract last digit
        sum=sum+(r*r*r); // add cube of digit to sum
    }
    if(sum == num)
        printf("%d is an Armstrong Number ", num);
    else
        printf("%d is not an Armstrong Number ", num);
}
