import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onGeneratePressed;

  const CustomButton({Key? key, required this.onGeneratePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onGeneratePressed,
      child: const Text('Generate'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
