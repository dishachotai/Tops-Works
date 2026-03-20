import 'dart:io';
int factorial(int n)
{
  int fact =1;
  for(int i =1;i<=n;i++)
  {
    fact= fact * i;// Multiply each number

  }
  return fact;
}
void main()
{
    print("enter number : ");
    int num=int.parse(stdin.readLineSync()!);

    int result =factorial(num);
    print("Factorial of $num is: $result");
}

// output   ------------------- enter number : 5 ---------->>>>>>>>>>>Factorial of 5 is: 120