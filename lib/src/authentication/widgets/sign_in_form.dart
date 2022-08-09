import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
    this.prefixIcon,
    this.sufixIcon,
    required this.hintText,
    required this.controller,
    required this.obscureText,
    required this.onSaved,
  }) : super(key: key);

  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Function(String) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      cursorColor: Colors.black,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: Icon(
          sufixIcon,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      onSaved: (value) => onSaved(value!),
    );
  }
}
