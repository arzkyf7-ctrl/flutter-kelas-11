import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ConfirmRegisController extends GetxController {
  late String username = "";
  late String namaLengkap = "";
  late String email = "";
  late String agama = "";
  late String jenisKelamin = "";
  late String noWA = "";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;

    if (arguments != null && arguments is Map) {
      username = arguments['username'] ?? '';
      namaLengkap = arguments['nama_lengkap'] ?? '';
      email = arguments['email'] ?? '';
      agama = arguments['agama'] ?? '';
      jenisKelamin = arguments['jenis_kelamin'] ?? '';
      noWA = arguments['no_wa'] ?? '';
    } else {
      username = '';
      namaLengkap = '';
      email = '';
      agama = '';
      jenisKelamin = '';
      noWA = '';
    }
  }
}
