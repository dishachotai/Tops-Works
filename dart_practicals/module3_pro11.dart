  import 'dart:io';
  void main()
  {
    List<int> arr = [];
    int  num ;
    
    print("enter 10 numbers : ");

    for(int i =1; i<=10; i++)
    {
      num= int.parse(stdin.readLineSync()!);
      arr.add(num);
    }
    int max =arr[0]; // Assume first element is maximum
    
    // Loop to find maximum number
    for(int  i=1; i<10; i++)
    {
      if(arr[i]>max)
      {
        max=arr[i]; // Compare each element
      }
    }
    print("Maximum(big number show) = $max");
  }
  /*op
  enter 10 numbers : 
1
2
3
4
5
6 
7
8
9
10
Maximum(big number show) = 10*/