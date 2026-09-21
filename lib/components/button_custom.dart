import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String BtnText;
  final VoidCallback? onPressed;
  final Color BtnColor;
  final Color BtnTextColor;
  const ButtonCustom({
    super.key,
    required this.BtnText,
    this.onPressed,
    this.BtnColor = Colors.blue,
    this.BtnTextColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: BtnColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(BtnText, style: TextStyle(color: BtnTextColor)),
    );
  }
}
