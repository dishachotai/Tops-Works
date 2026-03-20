//This program takes 5 numbers, stores them in a list, then displays the element at the given position (using position − 1 index).
import 'dart:io';
void main()
{
  List<int>arr=[];
  print("Enter 5 numbers : ");

  for(int i =0;i<5;i++)
  {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter position (1 to 5)");
  int pos=int.parse(stdin.readLineSync()!);

  
  // Display element at given position 
  //position - 1 because index starts from 0
  print("Element = ${arr[pos - 1]}");
}
/* op
Enter 5 numbers : 
10
20
30
40
50
Enter position (1 to 5)
4
Element = 40*/
