import 'package:flutter/material.dart';
import 'package:tugas4/pages/profile.dart';

//import 'package:tugas4/pages/login.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final kodeKasirController = TextEditingController();
  final namaKasirController = TextEditingController();

  @override
  void dispose() {
    kodeKasirController.dispose();
    namaKasirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            TextField(
              controller: kodeKasirController,
              decoration: InputDecoration(hintText: 'Masukkan Kode Kasir'),
            ),
            TextField(
              controller: namaKasirController,
              decoration: InputDecoration(hintText: 'Masukkan Nama Kasir'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfilePage(
                      kodeKasir: kodeKasirController.text,
                      namaKasir: namaKasirController.text,
                    ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
