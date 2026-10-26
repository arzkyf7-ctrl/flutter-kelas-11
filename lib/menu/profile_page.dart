import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/heading_text.dart';
import 'package:flutter_kelas_11/components/text_custom.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlutterLogo(size: 100),
          HeadingText(text: "Feby Rizky Firmansyah"),
          TextCustom(text: "11 PPLG 2"),
        ],
      ),
    );
  }
}
