import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/components/text_custom.dart';
import 'package:flutter_kelas_11/components/textfield_custom.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //id
  TextEditingController textfieldUsername = TextEditingController();
  TextEditingController textfieldPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Column(
        children: [
          TextCustom(
            text: "Welcome to Login Page",
            fontSize: 24,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(20), // Add margin around the TextField
            child: TextFieldCustom(
              myHint: "input username",
              txtController: textfieldUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20), // Add margin around the TextField
            child: TextFieldCustom(
              myHint: "input password",
              txtController: textfieldPassword,
            ),
          ),
          ButtonCustom(
            BtnText: "Login",
            onPressed: () {
              setState(() {
                if (textfieldUsername.text == "admin" &&
                    textfieldPassword.text == "admin") {
                  statusLogin = "Login Success";
                } else {
                  statusLogin = "Login Failed";
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
