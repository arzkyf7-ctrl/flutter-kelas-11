import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/controllers/makanan_detail_controller.dart';
import 'package:get/get.dart';

class MakananDetail extends StatelessWidget {
  MakananDetail({super.key});
  final controller = Get.put(MakananDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(controller.gambar),
            SizedBox(height: 10),
            Text(
              controller.namaMakanan,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(controller.harga, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(controller.deskripsi, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
