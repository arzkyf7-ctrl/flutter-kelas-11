import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/controllers/list_makanan_controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed('/makananDetail', arguments: makanan);
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.harga),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}
