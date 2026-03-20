// Write a program make a summation of given number(E.g. 1523 ans :-11) 
//This program takes a number, adds all its digits using a loop, and prints the total sum.
import 'dart:io';
void main()
{
    int num;
    int sum=0;
    
    print("Enter number  : ");
    num=int.parse(stdin.readLineSync()!);
 // Loop runs until number becomes 0
    while(num > 0)
    {

      int digit = num %10; // Get last digit
      sum= sum + digit;    // Add digit to sum
      num = num ~/ 10;       // Remove last digit
    }
    print("sum of digits ${sum}");

}