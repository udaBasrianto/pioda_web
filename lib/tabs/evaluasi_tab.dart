import 'package:flutter/material.dart';

class EvaluasiTab extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Selesai ',
      'soal': '2 Soal',
      'button': 'Lihat Hasil',
      'myColor': Color.fromARGB(255, 69, 97, 241),
      'soalColor': Colors.black87,
    },
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Belum dikerjakan ',
      'soal': '2 Soal',
      'button': 'Kerjakan',
      'myColor': Color.fromARGB(255, 45, 190, 120),
      'soalColor': Colors.black87,
    },
    {
      'judul': 'EH03 - Masjid-Masjid di Madinah\nselain Masjid Nabawi',
      'buka': 'Senin, 08 Okt • 19:00',
      'tutup': 'Selasa. 09 Okt • 19:00',
      'status': 'Belum Dikerjakan ',
      'soal': '2 Soal',
      'button': 'Belum Tersedia',
      'myColor': Color.fromARGB(255, 209, 215, 251),
      'soalColor': Color.fromARGB(255, 209, 215, 251),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: myList.map((data) {
        return Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.grey.shade200),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['judul']}",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dibuka: ${data['buka']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: data['myColor'],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Berakhir: ${data['tutup']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: data['myColor'],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${data['status']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: data['myColor'],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${data['soal']}",
                        style:
                            TextStyle(fontSize: 12, color: data['soalColor']),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("${data['button']}"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(320, 50),
                      backgroundColor: data['button'] == 'Lihat Hasil'
                          ? Color.fromARGB(255, 69, 97, 241)
                          : data['button'] == 'Kerjakan'
                              ? Color.fromARGB(255, 45, 190, 120)
                              : Color.fromARGB(255, 209, 215, 251),
                    ),
                  )

                  // Text("${data['button']}"),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
