import 'package:flutter/material.dart';
import 'package:task1/widgets/gradient_button.dart';
import 'package:task1/widgets/login_field.dart';
import 'package:task1/widgets/social_button.dart';
import 'package:task1/login_screen.dart'; // Import the LoginScreen

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

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
              const LoginField(hintText: 'Name'), // Add name input field
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(
                textInput: "register",
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
