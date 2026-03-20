import 'dart:io';
// Class to define Employee structure
class Employee 
{
  int empno;
  String empname;
  String address;
  int age;
  // Constructor to initialize values
  Employee (this.empno,this.empname,this.address,this.age);
}

void main()
{
      List<Employee> empList = []; // store emp object

    for(int i=0;i<5;i++)
    {
      print("Enter details of Employee ${i + 1} : ");
      
      print("enter Employee Number : ");
      int empno=int.parse(stdin.readLineSync()!);

      print("Enter Employee Name : ");
      String empname=stdin.readLineSync()!;

      print("Enter Employee Address : ");
      String address= stdin.readLineSync()!;

      print("Enter Employee Age ");
      int age=int.parse(stdin.readLineSync()!);

       // Create Employee object and add to list
      empList.add(Employee(empno, empname, address, age));

  }
  print("\n--- Employee Details ---");
  for(int i=0;i<empList.length;i++)
  {
    print("\nEmployee ${i + 1}:");
    print("Emp No: ${empList[i].empno}");
    print("Name: ${empList[i].empname}");
    print("Address: ${empList[i].address}");
    print("Age: ${empList[i].age}");
  }
    
}