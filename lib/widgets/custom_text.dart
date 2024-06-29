import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double textSize;
  const CustomText({
    Key? key, 
    required this.shadows,
    required this.text,
    required this.textSize,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: textSize,
          shadows: shadows,
        ),
      );
  }
}