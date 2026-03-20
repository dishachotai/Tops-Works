import 'dart:io';
void fibonacci(int n)
{
  int a= 0, b= 1;
  print("fibonacci Series ");
  for(int i=0; i<n; i++)
  {
    print(a);
    int next = a+b;// Next number = sum of previous two
    a=b;
    b=next;
  }
}
void main()
{
    print("enter number of terms ");
    int num=int.parse(stdin.readLineSync()!);

    // function call
    fibonacci(num);
}