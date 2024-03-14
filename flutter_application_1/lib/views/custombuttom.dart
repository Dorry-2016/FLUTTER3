import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/views/CustomText.dart';

class custombutton extends StatelessWidget {
  final String buttonlabel;
  final VoidCallback? action;
  const custombutton({
    super.key,
    required this.buttonlabel,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Customtext(
        label: buttonlabel,
        labelColor: appWhite,
        fontsize: 30,
        fontWeight: FontWeight.bold,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 10,
          minimumSize: Size(60, 50),
          padding: const EdgeInsets.all(60),
          shadowColor: primaryColor),
    );
  }
}
