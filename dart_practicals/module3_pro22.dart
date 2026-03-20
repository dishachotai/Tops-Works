import 'dart:io';
// ascending order
void sortNumbers(List<int> arr) 
{
  int n = arr.length;
  // Outer loop
  for(int i=0; i< n-1; i++)
  {
    // inner loop for comparison
    for(int j=i+1; j<n; j++)
    {
       // If elements are in wrong order
      if(arr[i]> arr[j])
      {
        //Swap values
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void main()
{
    List<int> numbers=[];// List to store numbers
    print("enter 5 number : ");
    for(int i =0; i<5 ;i++)
    {
      numbers.add(int.parse(stdin.readLineSync()!));
    }
    // function call
    sortNumbers(numbers);
    print("Sorted numbers : $numbers");
}