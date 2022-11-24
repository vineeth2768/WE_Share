import 'package:flutter/material.dart';
import 'package:weshare/constants/constants.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labalText;
  final bool isObscure;
  final IconData icon;
  const TextInputField({
    super.key,
    required this.controller,
    required this.labalText,
    this.isObscure = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labalText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: borderColor),
        ),
      ),
      obscureText: isObscure,
    );
  }
}
