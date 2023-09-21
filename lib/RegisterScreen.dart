import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:task1/widgets/gradient_button.dart';
import 'package:task1/widgets/login_field.dart';
import 'package:task1/widgets/social_button.dart';
import 'package:task1/login_screen.dart'; // Import the LoginScreen
import 'package:http/http.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  void signup() async {
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'name': name, 'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Register.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Continue with Google'),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              LoginField(
                  hintText: 'Name', controller: name), // Add name input field
              const SizedBox(height: 15),
              LoginField(hintText: 'Email', controller: email),
              const SizedBox(height: 15),
              LoginField(hintText: 'Password', controller: password),
              const SizedBox(height: 20),
              GradientButton(
                textInput: "register",
                pressHandle: signup,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate back to the login page
                      Navigator.pop(context);
                    },
                    child: Text('Back to Login'), // Add "Back to Login" button
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
