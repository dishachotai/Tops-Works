import 'dart:io';
String concatenate(String s1, String s2)
{
  return s1 + s2; // Join both strings and return result
}
void main()
{
    print("Enter 1 string : ");
    String str1=stdin.readLineSync()!;

    print("enter 2 string : ");
    String str2=stdin.readLineSync()!;

    String result=  concatenate(str1 ,str2);
    print("Concatenated String: $result");
}



/*op
Enter 1 string : 
disha
enter 2 string : 
chotai
Concatenated String: dishachotai*/