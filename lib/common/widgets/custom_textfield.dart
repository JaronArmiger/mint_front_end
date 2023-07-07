import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool isPassword;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black38,
            width: 20,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: isPassword,
      enableSuggestions: false,
      autocorrect: false,
    );
  }
}
