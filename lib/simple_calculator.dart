import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/components/text_custom.dart';
import 'package:flutter_kelas_11/components/textfield_custom.dart';

class SimpleCalculator extends StatefulWidget {
  const new({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  //id for widgets
  TextEditingController textfieldFirstNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Column(
        children: [
          TextCustom(
            text: "Welcome to Simple Calculator",
            fontSize: 24,
            color: Colors.blue,
          ),
          TextFieldCustom(
            myHint: "Enter first number",
            txtController: textfieldFirstNumber,
          ),
          TextFieldCustom(
            myHint: "Enter second number",
            txtController: textfieldFirstNumber,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCustom(BtnText: "+", onPressed: () {}),
              ButtonCustom(BtnText: "-", onPressed: () {}),
              ButtonCustom(BtnText: "*", onPressed: () {}),
              ButtonCustom(BtnText: "/", onPressed: () {}),
            ],
          ),
          TextCustom(text: "Result: ", fontSize: 20, color: Colors.black),
        ],
      ),
    );
  }
}
