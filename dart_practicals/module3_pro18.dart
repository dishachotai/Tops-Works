import 'dart:io';
// Recursive function to reverse the number
int reverse(int num ,int rev)
{
  if(num==0)
  {
    return rev;
  }
  // Recursive call:
  // Remove last digit (num ~/ 10)
  // Add last digit to reverse (rev * 10 + num % 10)
  return reverse(num ~/10,rev * 10 +num %10);
}
void main()
{
    int num;
    print("enter number :");
    num=int.parse(stdin.readLineSync()!);

    int result = reverse(num,0);// Call recursive function
    
    if(num == result)
    {
    print("The number is Palindrome.");
  } 
  else
   {
    print("The number is NOT Palindrome.");
   }
}

/*op 
Input: 121 → Palindrome 
Input: 123 → Not Palindrome*/ 