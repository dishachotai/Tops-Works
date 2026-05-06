import 'package:flutter/material.dart';
import 'Login_page_task.dart';

class Register_pageTask extends StatefulWidget {
  const Register_pageTask({super.key});

  @override
  State<Register_pageTask> createState() => _Register_pageTaskState();
}

String savedEmail = "";
String savedPassword = "";

class _Register_pageTaskState extends State<Register_pageTask> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 185, 207),
        ),

        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),

              child: Container(
                padding: EdgeInsets.all(25),

                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 139, 94, 116),
                  borderRadius: BorderRadius.circular(20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      spreadRadius: 3,
                    )
                  ],
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white24,

                      child: Icon(
                        Icons.person_add,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 25),

                    // 👤 Name
                    TextField(
                      controller: name,
                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: TextStyle(color: Colors.white70),

                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),

                        filled: true,
                        fillColor: Colors.white24,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    // 📧 Email
                    TextField(
                      controller: email,
                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.white70),

                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),

                        filled: true,
                        fillColor: Colors.white24,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    // 🔑 Password
                    TextField(
                      controller: password,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.white70),

                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),

                        filled: true,
                        fillColor: Colors.white24,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    // 🚀 Register Button
                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: Colors.white,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        onPressed: () {

                          savedEmail = email.text.trim();
                          savedPassword = password.text.trim();

                          print("Saved Email: $savedEmail");
                          print("Saved Password: $savedPassword");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_page_Task(
                                savedEmail: email.text.trim(),
                                savedPassword: password.text.trim(),
                              ),
                            ),
                          );
                        },

                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}