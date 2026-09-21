import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  //variables
  final String myHint;
  final TextEditingController txtController;
  const TextFieldCustom({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
