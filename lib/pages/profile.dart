import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key, required this.kodeKasir, required this.namaKasir});

  final String kodeKasir;
  final String namaKasir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama Kasir')),
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            Text('Selamat Datang'),
            Text('Kode Kasir: $kodeKasir'),
            Text('Nama Kasir: $namaKasir'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
