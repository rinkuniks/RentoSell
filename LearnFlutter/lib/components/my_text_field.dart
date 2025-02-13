import 'package:flutter/material.dart';

import '../Constants/Dimens.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hint;
  final bool obscureText;

  const MyTextField({super.key,
    required this.controller,
    required this.hint,
    required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.twentyFour),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(Dimens.eight),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(Dimens.eight),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[500])

        ),
      ),
    );
  }
}
