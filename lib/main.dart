import 'package:flutter/material.dart';
import 'package:study/Screen/Home_pages.dart';
import 'package:study/auth/welcome_auth.dart';
// import 'auth/Login_page.dart';
import 'auth/Signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeAuth(),
    );
  }
}
