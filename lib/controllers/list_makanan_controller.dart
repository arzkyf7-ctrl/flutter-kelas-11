import 'package:flutter_kelas_11/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  //data makanan
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      harga: "10.000",
      deskripsi: "Soto ayam adalah makanan berkuah yang terbuat dari kaldu ayam, daging ayam, dan berbagai bumbu rempah. Biasanya disajikan dengan nasi, telur rebus, dan kerupuk.",
      gambar: "https://thumb.wikimedia.org/wikipedia/commons/thumb/0/05/Soto_ayam.JPG/330px-Soto_ayam.JPG",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng",
      harga: "12.000",
      deskripsi: "Nasi goreng adalah makanan yang terbuat dari nasi yang digoreng dengan bumbu-bumbu seperti bawang putih, bawang merah, kecap manis, dan cabai. Biasanya disajikan dengan telur, ayam, atau seafood.",
      gambar: "https://thumb.wikimedia.org/wikipedia/commons/thumb/4/46/Nasi_Goreng_Kampung.jpg/330px-Nasi_Goreng_Kampung.jpg",
    ),
    MakananModel(
      namaMakanan: "Mi Ayam",
      harga: "8.000",
      deskripsi: "Mi ayam adalah makanan yang terbuat dari mi yang disajikan dengan potongan ayam, sayuran, dan kuah kaldu ayam. Biasanya disajikan dengan pangsit goreng atau pangsit rebus.",
      gambar: "https://thumb.wikimedia.org/wikipedia/commons/thumb/1/16/Mie_Ayam_Pangsit_Goreng.jpg/330px-Mie_Ayam_Pangsit_Goreng.jpg",
    ),
    MakananModel(
      namaMakanan: "Bakso",
      harga: "15.000",
      deskripsi: "Bakso adalah makanan yang terbuat dari daging sapi yang digiling halus dan dibentuk menjadi bola-bola. Biasanya disajikan dengan kuah kaldu, mi, tahu, dan sayuran.",
      gambar: "https://upload.wikimedia.org/wikipedia/commons/2/28/Bakso_mi_bihun.jpg",
    ),
  ];
}
