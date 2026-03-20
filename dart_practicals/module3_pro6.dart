// Write a program to print the number in reverse order.  
import 'dart:io';
void main()
{
    int num,digit;
    print("enter a number ");
    num=int.parse(stdin.readLineSync()!);

    int reverse = 0;

    while(num > 0)
    {
      digit=num % 10;
      reverse = reverse * 10 + digit; 
      num = num ~/10;
    }
    print("Reverse number = ${reverse}");
}