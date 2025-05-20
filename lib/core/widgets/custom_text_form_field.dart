import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
  });
  final TextInputType keyboardType;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.bold13.copyWith(color: const Color(0xFF949D9E)),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: const Color(0XFFE6E9E9), width: 1),
    );
  }
}
