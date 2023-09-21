import 'package:flutter/material.dart';
import 'package:task1/pallete.dart';

class GradientButton extends StatelessWidget {
  final String? textInput;
  final Function()? pressHandle; // Function for onPressed

  const GradientButton({
    Key? key,
    this.textInput,
    this.pressHandle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: pressHandle, // Use the provided onPressed function
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          textInput ?? '', // Use the provided text input or an empty string
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
