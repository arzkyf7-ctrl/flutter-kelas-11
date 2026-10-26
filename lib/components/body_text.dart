import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final int fontSize;

  const new({super.key, required this.text, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize.toDouble()));
  }
}
