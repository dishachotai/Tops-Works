import 'package:flutter/material.dart';
import 'package:myproject2/Login_page_task_04-05/Quiz_Page_task.dart';

class Login_page_Task extends StatefulWidget {
  final String savedEmail;
  final String savedPassword;

  const Login_page_Task({
    super.key,
    required this.savedEmail,
    required this.savedPassword,
  });

  @override
  State<Login_page_Task> createState() => _Login_page_TaskState();
}

class _Login_page_TaskState extends State<Login_page_Task> {

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
                        Icons.lock,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "Login to continue",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),

                    SizedBox(height: 25),

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

                    // 🚀 Login Button
                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),

                          elevation: 5,
                          backgroundColor: Colors.white,
                        ),

                        onPressed: () {

                          print("Entered Email: ${email.text}");
                          print("Saved Email: ${widget.savedEmail}");

                          if (email.text.trim() == widget.savedEmail &&
                              password.text.trim() == widget.savedPassword) {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizPage(),
                              ),
                            );

                          } else {

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Wrong Email or Password"),
                              ),
                            );
                          }
                        },

                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

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