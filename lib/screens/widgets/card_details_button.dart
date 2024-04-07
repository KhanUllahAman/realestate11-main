import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Card_details_buttons extends StatelessWidget {
  final String buttonName;
  final Color buttonbgColor;
  final Color buttontextColor;
  Card_details_buttons({
    super.key, 
    required this.buttonName, 
    required this.buttonbgColor, 
    required this.buttontextColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: buttonbgColor),
      onPressed: () {},
      child: Text(buttonName, style: TextStyle(color: buttontextColor),)
      );
  }
}