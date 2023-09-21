import 'package:flutter/material.dart';
import 'package:task1/widgets/gradient_button.dart';
import 'package:task1/login_screen.dart'; // Import the LoginScreen
import 'package:http/http.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});
  final TextEditingController email = TextEditingController();
  void signup() async {
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email});

      if (response.statusCode == 200) {
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
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              GradientButton(
                textInput: "register",
                pressHandle: signup,
              ),
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
