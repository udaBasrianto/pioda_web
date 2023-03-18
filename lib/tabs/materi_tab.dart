import 'package:flutter/material.dart';
import 'dart:math';

class MateriTab extends StatelessWidget {
  final List<Map<String, dynamic>> daTaku = [
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Selesai ',
      'soal': '2 Soal',
      'button': 'Lihat Hasil',
    },
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Belum dikerjakan ',
      'soal': '2 Soal',
      'button': 'Kerjakan',
    },
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Belum Dikerjakan ',
      'soal': '2 Soal',
      'button': 'Belum Tersedia',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daTaku.length,
      itemBuilder: (context, index) {
        final data = daTaku[index];
        Color bgColor;

        // Set background color for button based on its text
        switch (data['button']) {
          case 'Lihat Hasil':
            bgColor = Colors.green;
            break;
          case 'Kerjakan':
            bgColor = Colors.blue;
            break;
          case 'Belum Tersedia':
            bgColor = Colors.grey;
            break;
          default:
            bgColor = Colors.white;
        }

        final random = Random();
        final color1 = Color.fromARGB(
          255,
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        );
        final color2 = Color.fromARGB(
          255,
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        );

        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['judul']),
              Text(data['buka']),
              Text(
                data['tutup'],
                style: TextStyle(color: color1),
              ),
              Text(
                data['status'],
                style: TextStyle(color: color2),
              ),
              Text(data['soal']),
              Container(
                color: bgColor,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  data['button'],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
