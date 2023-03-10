import 'package:flutter/material.dart';
import 'package:test_1/BMI%20calc.dart';
import 'package:test_1/bmi%20results.dart';
import 'package:test_1/logIn_screen.dart';
import 'package:test_1/messenger_screen.dart';
import 'package:test_1/todo_app.dart';
import 'home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: todoHomeScreen(),
    );


  }
}

