import 'package:flutter/material.dart';
import 'package:task1/widgets/gradient_button.dart';
import 'package:task1/login_screen.dart'; // Import the LoginScreen

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              const GradientButton(textInput: 'change'),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate back to the login screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Back to Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
