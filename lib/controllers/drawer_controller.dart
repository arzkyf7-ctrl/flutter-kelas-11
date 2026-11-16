import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/menu/history_page.dart';
import 'package:flutter_kelas_11/menu/home_page.dart';
import 'package:flutter_kelas_11/menu/profile_page.dart';
import 'package:flutter_kelas_11/models/menu_model.dart';
import 'package:get/get.dart';

class DrawerControllerX extends GetxController {
  var selectedIndex = 0.obs;

  final List<MenuModel> menuItems = [
    MenuModel(title: 'Home', icon: Icons.home),
    MenuModel(title: 'History', icon: Icons.history),
    MenuModel(title: 'Profile', icon: Icons.person),
  ];

  final List<Widget> pages = [HomePage(), HistoryPage(), ProfilePage()];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back();
  }
}
