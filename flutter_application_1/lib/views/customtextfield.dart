//CustomTextField.dart
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final bool isPassword;
  final bool hideText;
  final String? hint;
  const CustomTextField(
      {super.key,
      this.icon,
      this.hideText = false,
      this.isPassword = false,
      this.hint,
      required TextEditingController userFieldController,
      required TextEditingController customTextFieldController,
      required String hintText, //
      required Icon prefixIcon,
      required controller}); //

  get userFieldController => null;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorRadius: const Radius.elliptical(5, 0),
      controller: userFieldController,
      decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? const Icon(Icons.visibility)
              : Container(
                  height: 10,
                  width: 10,
                )),
      obscureText: hideText,
    );
  }
}
