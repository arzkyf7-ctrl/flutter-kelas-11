import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/heading_text.dart';
import 'package:flutter_kelas_11/controllers/list_makanan_controller.dart';
import 'package:flutter_kelas_11/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: HeadingText(text: "Makanan"),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
                return InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.makananDetail,
                      arguments: {
                        'namaMakanan': makanan.namaMakanan,
                        'harga': makanan.harga,
                        'deskripsi': makanan.deskripsi,
                        'gambar': makanan.gambar,
                      },
                    );
                  },
                  child: Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mengatur bagaimana elemen child disusun tegak lurus sesuai layout utama

                      children: [
                        ClipRRect(
                          //meng-clip widget menggunakan kotak bersudut lingkar
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                          child: Image.network(
                            makanan.gambar,
                            height: 110,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              //menampilkan ikon jika gambar gagal dimuat
                              return Container(
                                height: 110,
                                color: Colors.grey,
                                child: Icon(Icons.fastfood),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(makanan.namaMakanan),
                              SizedBox(
                                height: 4,
                              ), //membuat kotak dgn ukuran yang ditentukan
                              Text("Rp ${makanan.harga}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
