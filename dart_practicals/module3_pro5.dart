import 'dart:io';
void main()
{
  int n;
  print("enter number :");
  n=int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;
  while(a <= n)
  {
    print(a);
    int c = a + b;// Next number = sum of previous two
    a = b; // Update a to next value
    b = c; // Update b to next value

    
  }
}
/*print(a);
 current number print hota hai

c = a + b;
next number nikalte hai (previous 2 ka sum)

a = b;
a ko next value dete hai

b = c;
b ko new value dete hai
op -----enter number :
4
0
1
1
2
3*/