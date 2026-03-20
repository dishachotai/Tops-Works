import 'dart:io';
void main()
{
  int num =1;
  for(int i=1;i<10; i++)
  {
     // Inner loop prints numbers in each row
    // j <= i → increases numbers per row
    // num <= 10 → stops after printing 10 numbers
   for (int j = 1; j <= i && num <= 10; j++) 
   {
    
        stdout.write("$num ");
        num++;

    }
    print("");
  }
}

/*output
1 
2 3
4 5 6
7 8 9 10*/