import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/controllers/confirm_regis_controller.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class ConfirmRegis extends StatelessWidget {
  ConfirmRegis({super.key});
  final controller = Get.put(ConfirmRegisController());

  Widget _item(IconData icon, String label, String value) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade50,
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(
        label,
        style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
      ),
      subtitle: Text(
        value.isEmpty ? '-' : value,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          "REGISTRATION",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Card(
              elevation: 6,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.check, size: 36, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Data Registrasi",
                      style: Theme.of(context).textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Pastikan data kamu sudah benar",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 12),
                    const Divider(),
                    _item(Icons.person, "Nama", controller.username),
                    _item(Icons.email, "Email", controller.email),
                    _item(Icons.mosque, "Agama", controller.agama),
                    _item(Icons.wc, "Jenis Kelamin", controller.jenisKelamin),
                    _item(Icons.phone, "No. WA Aktif", controller.noWA),
                    const SizedBox(height: 16),
                    ButtonCustom(
                      BtnText: "OK",
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
