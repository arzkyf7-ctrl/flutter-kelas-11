import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/components/text_custom.dart';
import 'package:flutter_kelas_11/components/textfield_custom.dart';
import 'package:flutter_kelas_11/controllers/calculator_controller.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txtangka1,
                  decoration: InputDecoration(
                    hintText: "Masukkan angka pertama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txtangka2,
                  decoration: InputDecoration(
                    hintText: "Masukkan angka kedua",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCustom(
                  BtnText: "+",
                  onPressed: () {
                    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "TextField harus diisi",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                    controller.add(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                ),
                ButtonCustom(
                  BtnText: "-",
                  onPressed: () {
                    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "TextField harus diisi",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                    controller.subtract(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                ),
                ButtonCustom(
                  BtnText: "×",
                  onPressed: () {
                    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "TextField harus diisi",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                    controller.multiply(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                ),
                ButtonCustom(
                  BtnText: "÷",
                  onPressed: () {
                    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "TextField harus diisi",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                    controller.divide(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                ),
              ],
            ),
          ),
          Obx(() => TextCustom(text: "Hasil : ${controller.result.value}")),
        ],
      ),
    );
  }
}
