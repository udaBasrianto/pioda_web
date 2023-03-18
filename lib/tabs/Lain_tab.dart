import 'package:flutter/material.dart';

class LainTab extends StatelessWidget {
  final List<Map<String, dynamic>> myList1 = [
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
      itemCount: myList1.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _getButtonColor(myList1[index]['button']),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myList1[index]['judul'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(myList1[index]['buka']),
              Text(myList1[index]['tutup']),
              Text(myList1[index]['status']),
              Text(myList1[index]['soal']),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  myList1[index]['button'],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _getButtonColor(String button) {
    switch (button) {
      case 'Lihat Hasil':
        return Colors.green;
      case 'Kerjakan':
        return Colors.blue;
      case 'Belum Tersedia':
        return Colors.grey;
      default:
        return Colors.white;
    }
  }
}

/* class LainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 35, 84, 123),
      child: Center(
        child: Text("Lainnya"),
      ),
    );
  }
}
*/