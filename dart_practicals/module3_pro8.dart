import 'dart:io';
void main()
{
  for(int i=1; i<=4; i++)
  {
    for(int j=1; j <=i; j++)
    {
      stdout.write("* ");
    }
   print("");// next line
  }
}