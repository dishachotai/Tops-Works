import 'dart:io';
void main()
{
  int num,square,cube;
  print("Enter Number : ");

  num = int.parse(stdin.readLineSync()!);

  //square 
  square = num * num;

  // cube
  cube = num * num * num;

   
  print("square of $num is :$square");
  print("cube of $num is :$cube ");
}

/*op
Enter Number :5
square of 5 is :25
cube of 5 is :125
*/