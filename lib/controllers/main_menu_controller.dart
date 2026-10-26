import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/menu/history_page.dart';
import 'package:flutter_kelas_11/menu/home_page.dart';
import 'package:flutter_kelas_11/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 1.obs;

  //action ClickPage
  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}
