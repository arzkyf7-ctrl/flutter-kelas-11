import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/models/makanan_model.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class MakananDetail extends StatelessWidget {
  MakananDetail({super.key});
  final MakananModel makanan = Get.arguments as MakananModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(makanan.namaMakanan)),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(makanan.gambar),
            SizedBox(height: 10),
            Text(
              makanan.namaMakanan,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Harga : " + makanan.harga, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(makanan.deskripsi, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
