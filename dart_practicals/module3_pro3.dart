import 'dart:io';
void main()
{
   double total ,marks;
    total =0;
    for(int i = 1; i<=5 ; i++)
    {
      print("Enter marks for subject $i : ");
      marks=double.parse(stdin.readLineSync()!);

      total+= marks;

    }

   double percentage = total / 5;

    print("total marks : ${total}");
    print("Percentage : ${percentage}");

    if(percentage > 75)
    {
       print("Result: Distinction");
    }
    else if(percentage > 60 && percentage <= 75 )
    {
       print("Result: First Class ");
    }
    else if(percentage > 50 && percentage <=60)
    {
       print("Result: Second Class ");
    }
    else if (percentage >35 && percentage <=50)
    {
      print("Result: Pass class");
    }
    else
    {
      print("Result: Fail ");
    }
}