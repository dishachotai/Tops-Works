// Write a Program to check the given number is prime or not prime.
import 'dart:io';
void main()
{
  int num;
    print("Enter Number  :");
   num=int.parse(stdin.readLineSync()!);

    bool isPrime = true;
    
    if(num <= 1)
    {
      isPrime = false;
    }
    else
    {
       // Loop from 2 to num/2 to check divisibility
      for(int i =2; i<= num~/2;i++)
      {
        // If number is divisible by any i → not prime
        if(num % i == 0 )
        {
          isPrime = false;
          break;
        }
      }
  }
  if(isPrime)
  {
    print("$num is prime number : ");

  }
  else{
    print("$num is not prime number :");
  }
}