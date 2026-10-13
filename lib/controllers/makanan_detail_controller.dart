import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class MakananDetailController extends GetxController {
  late String namaMakanan = "";
  late String harga = "";
  late String deskripsi = "";
  late String gambar = "";

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    if (arguments is Map) {
      namaMakanan = arguments['namaMakanan'] ?? '';
      harga = arguments['harga'] ?? '';
      deskripsi = arguments['deskripsi'] ?? '';
      gambar = arguments['gambar'] ?? '';
    }
    update();
  }
}
