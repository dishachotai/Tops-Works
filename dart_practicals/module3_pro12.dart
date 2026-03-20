//This program takes 5 numbers, sorts them in ascending order using loops, and prints the sorted array.
import 'dart:io';
void main()
{
  List<int>arr= [];
  print("enter 5 numbers : ");

  for(int i =0;i<5;i++)
  {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  // Ascending order
  for(int i=0;i<5;i++)
  {
    for(int j=i+1;j<5;j++)
    {
       // Compare elements
       if (arr[i] > arr[j]) 
       {   
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  print("Sorted array: $arr");
}