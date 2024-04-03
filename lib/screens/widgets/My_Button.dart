import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String nameText;
  final Color color;
  final Color textColor;
  const MyButton({
    super.key,
    required this.nameText,
    required this.color, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(nameText, style: TextStyle(color: textColor),),
    );
  }
}
