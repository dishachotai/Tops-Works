import 'dart:io';
String copyString(String str) 
{
  String copied = str;  // copying string
  return copied;
}

void main()
{
  print("enter String : ");
  String input = stdin.readLineSync()!;

  String result= copyString(input);

  print("Original  string : $input");
  print("Copied string : $result"); 
}

/*----------------output 
enter String : 
disha chotai
Original  string : disha chotai
Copied string : disha chotai*/