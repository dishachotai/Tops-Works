//Write a Program to check the given year is leap year or not. 
import 'dart:io';
void main()
{
  int year;
  print("Enter a year :");
    // Check leap year condition
  // Condition:
  // 1. Year divisible by 4 AND not divisible by 100
  // OR
  // 2. Year divisible by 400
  year = int.parse(stdin.readLineSync()!);

  if((year % 4 == 0 && 100 != 0 )|| (year % 400 == 0 ))// If condition true
  {
      print("$year is a leap year :");

  }else{
    print("$year is a Not leap year :");// If condition false
  }
}

/*op
Enter a year :
2024
2024 is a leap year :*/