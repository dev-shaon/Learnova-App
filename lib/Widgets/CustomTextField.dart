import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon; 

  const CustomTextfield({
    super.key,
    required this.text,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: text,
        fillColor: const Color.fromARGB(255, 239, 239, 239),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
      style: TextStyle(color: Colors.black),
    );
  }
}

