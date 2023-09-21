import 'package:flutter/material.dart';
import 'package:task1/login_screen.dart';
import 'package:task1/RegisterScreen.dart';
import 'package:task1/change_password_screen.dart';
import 'package:task1/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      initialRoute: '/login', // Set the initial route to the login page
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/change_password': (context) => ChangePasswordScreen(),
      },
    );
  }
}
