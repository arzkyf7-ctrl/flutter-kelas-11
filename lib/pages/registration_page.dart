import 'package:flutter/material.dart';
import 'package:flutter_kelas_11/components/button_custom.dart';
import 'package:flutter_kelas_11/components/textfield_custom.dart';
import 'package:flutter_kelas_11/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNo_WA = TextEditingController();
    //dropdown utk jenis kelamin dan agama
    String? selectedGender = null;
    final List<String> genderOptions = ['Laki-laki', 'Perempuan'];
    String? selectedAgama = null;
    final List<String> agamaOptions = [
      'Islam',
      'Kristen Protestan',
      'Kristen Katolik',
      'Hindu',
      'Budha',
      'Konghucu',
    ];

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("REGISTRATION PAGE"),
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person_add,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Buat Akun Baru",
                      style: Theme.of(context).textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Lengkapi data diri kamu di bawah ini",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 8),
                    TextFieldCustom(myHint: "Nama", txtController: txtNama),
                    const SizedBox(height: 12),
                    TextFieldCustom(myHint: "Email", txtController: txtEmail),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: selectedAgama,
                      items: agamaOptions.map((String agama) {
                        return DropdownMenuItem<String>(
                          value: agama,
                          child: Text(agama),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        selectedAgama = newValue;
                      },
                      decoration: InputDecoration(
                        labelText: 'Agama',
                        prefixIcon: const Icon(Icons.account_balance),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: selectedGender,
                      items: genderOptions.map((String gender) {
                        return DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        selectedGender = newValue;
                      },
                      decoration: InputDecoration(
                        labelText: 'Jenis Kelamin',
                        prefixIcon: const Icon(Icons.wc),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFieldCustom(
                      myHint: "No. WA Aktif",
                      txtController: txtNo_WA,
                    ),
                    const SizedBox(height: 20),
                    ButtonCustom(
                      BtnText: "Submit",
                      onPressed: () {
                        Get.toNamed(
                          Routes.confirmRegis,
                          arguments: {
                            "username": txtNama.text,
                            "nama_lengkap": "admin",
                            "email": txtEmail.text,
                            "agama": selectedAgama ?? '',
                            "jenis_kelamin": selectedGender ?? '',
                            "no_wa": txtNo_WA.text,
                          },
                        );
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
