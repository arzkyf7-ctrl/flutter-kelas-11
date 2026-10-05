import 'package:flutter_kelas_11/pages/confirm_regis.dart';
import 'package:flutter_kelas_11/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegis = '/confirmRegis';
  // masukkan ke dalam array "myPages"
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegis, page: () => ConfirmRegis()),
  ];
}
