import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var result = 0.0.obs;

  void add(double a, double b) {
    result.value = a + b;
    Get.snackbar(
      "Hasil",
      "hasil : ${result.value}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void subtract(double a, double b) {
    result.value = a - b;
    Get.snackbar(
      "Hasil",
      "hasil : ${result.value}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void multiply(double a, double b) {
    result.value = a * b;
    Get.snackbar(
      "Hasil",
      "hasil : ${result.value}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void divide(double a, double b) {
    if (b == 0) {
      Get.snackbar(
        "Peringatan",
        "Angka kedua tidak boleh bernilai 0",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (b != 0) {
      result.value = a / b; // integer division
    } else {
      // Handle division by zero
      result.value = 0; // or throw an error
    }
    Get.snackbar(
      "Hasil",
      "hasil : ${result.value}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
