/*Write a program of to find out the Area of Triangle, Rectangle and Circle 
using Switch Case .(Must Be Menu Driven) 
*/import 'dart:io';
import 'dart:math';
void main()
{
  
  int choice;
    print("===== Area Calculator =====");
    print("Area of Triangle ");
    print("Area of Rectangle ");
    print("Area of Circle ");

    print("Enter your choice : ");
    choice=int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1:
      print("enter base : ");
      double base =double.parse(stdin.readLineSync()!);

      print("enter height : ");
      double height=double.parse(stdin.readLineSync()!);

      double area = 0.5 * base * height;
      print("Area of Triangle : ${area}");
      break;

      case 2:
      print("enter length : ");
      double length= double.parse(stdin.readLineSync()!);

      print("enter width : ");
      double width =double.parse(stdin.readLineSync()!);

      double area = length * width;
      print("Area of Rectangle = $area");
      break;


      case 3:
      // Circle
      print("enter radius : ");
      double radius=double.parse(stdin.readLineSync()!);

      double area = pi * radius * radius;
      print("Area of Circle = $area");
      break;

    default:
      print("Invalid  Input ");
    }
}