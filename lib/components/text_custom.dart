import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color color;
  //var
  const TextCustom({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.color = const Color.fromARGB(255, 37, 84, 254),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize.toDouble(), color: color),
    );
  }
}
