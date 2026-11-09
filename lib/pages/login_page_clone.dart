import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/heading_text.dart';
import 'package:flutter_kelas_11/controllers/login_page_controller.dart';
import 'package:get/get.dart';

class LoginPageClone extends StatelessWidget {
  LoginPageClone({super.key});

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: HeadingText(text: "Login Page")),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlutterLogo(size: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.txtUsername,
                decoration: InputDecoration(
                  label: Text("Masukkan username"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.txtPassword,
                decoration: InputDecoration(
                  label: Text("Masukkan password"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          controller.login();
                        },
                        child: Text("Login"),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
