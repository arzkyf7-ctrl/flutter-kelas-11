import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/models/login_model.dart';
import 'package:flutter_kelas_11/pages/main_menu.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginPageController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();
  //method for hit API
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan password harus terisi!");
    } else {
      try {
        isLoading.value = true; //sebagai tanda di pagenya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");
        final response = await http.post(
          url,
          body: {"username": txtUsername.text, "password": txtPassword.text},
        );
        isLoading.value = false;
        if (response.statusCode == 200) {
          // JSON message berisi pindah tampilan ke main menu diambil
          // final data = jsonDecode(response.body);
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil", loginModel.value!.message.toString());
            Get.off(MainMenu());
          } else {
            Get.snackbar("Gagal", loginModel.value!.message.toString());
          }
        } else {
          Get.snackbar("Gagal", "Cek koneksi internet Anda");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("Error" + e.toString());
      }
    }
  }
}
