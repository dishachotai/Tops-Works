import 'dart:io';
void adNumber(int a, int b)
{
  int sum = a + b;// Calculate sum
  print("sum = $sum"); // dispaly result
}
void main()
{
  print("Enter number 1 : ");
  int num1= int.parse(stdin.readLineSync()!);

  print("Enter number 2 : ");
  int num2= int.parse(stdin.readLineSync()!);

    // function call 
    adNumber(num1, num2);
}

/*
Enter number 1 : 
50
Enter number 2 : 
5
sum = 55*/