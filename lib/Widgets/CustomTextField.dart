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
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), 
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          suffixIcon: suffixIcon,
        ),
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
