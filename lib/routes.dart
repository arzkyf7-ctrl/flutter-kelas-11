import 'package:flutter_kelas_11/details/makanan_detail.dart';
import 'package:flutter_kelas_11/login_page.dart';
import 'package:flutter_kelas_11/pages/confirm_regis.dart';
import 'package:flutter_kelas_11/pages/list_makanan_page.dart';
import 'package:flutter_kelas_11/pages/login_page_clone.dart';
import 'package:flutter_kelas_11/pages/main_menu.dart';
import 'package:flutter_kelas_11/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = '/login';
  static const String registration = '/registration';
  static const String confirmRegis = '/confirmRegis';
  static const String listMakanan = '/listMakanan';
  static const String makananDetail = '/makananDetail';
  static const String mainMenu = '/mainMenu';
  // masukkan ke dalam array "myPages"
  static final myPages = [
    GetPage(name: login, page: () => LoginPageClone()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegis, page: () => ConfirmRegis()),
    GetPage(name: listMakanan, page: () => ListMakananPage()),
    GetPage(name: makananDetail, page: () => MakananDetail()),
    GetPage(name: mainMenu, page: () => MainMenu()),
  ];
}
