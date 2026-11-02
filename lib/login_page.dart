import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/components/heading_text.dart';
import 'package:flutter_kelas_11/controllers/login_page_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: HeadingText(text: "Login dengan API")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text("Masukkan username")),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(label: Text("Masukkan password")),
            ),
            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ButtonCustom(BtnText: "Login"),
            ),
          ],
        ),
      ),
    );
  }
}
