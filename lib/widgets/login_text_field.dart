import 'package:flutter/material.dart';
import '../utils/textfield_styles.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool hasAsterisks;

  const LoginTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.hasAsterisks = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hasAsterisks,
      validator: validator, // This is already nullable, no need to wrap again
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText, // Use the actual passed-in hintText
        hintStyle: ThemeTextStyle.loginTextFieldStyle,
        border: OutlineInputBorder(),
      ),
    );
  }
}
