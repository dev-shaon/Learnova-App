import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String text;
  final IconData? icon;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextfield({
    super.key,
    required this.text,
    this.icon,
    this.controller, 
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: icon != null ? Icon(icon, color: Colors.black) : null,
        fillColor: const Color.fromARGB(255, 239, 239, 239),
        filled: true,
        hintText: text,
        hintStyle:  TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
      style:  TextStyle(color: Colors.black),
    );
  }
}