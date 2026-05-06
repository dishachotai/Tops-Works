import 'package:flutter/material.dart';
import 'package:myproject2/Login_page_task_04-05/Register_page_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Register_pageTask(),
    );
  }
}