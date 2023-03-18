import 'package:edu_hsi/tabs/Lain_tab.dart';
import 'package:edu_hsi/tabs/evaluasi_tab.dart';
import 'package:edu_hsi/tabs/materi_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Program Reguler: 211',
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 35, 57, 118),
          actions: <Widget>[
            Row(
              children: [
                Text(
                  'v.2211-2402',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Silsilah Ilmiyyah 7: Beriman kepada Kitab Kitab Allah',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TabBar(
              padding: EdgeInsets.all(10),
              labelColor: Color.fromARGB(255, 7, 36, 94),
              unselectedLabelColor: Color.fromARGB(255, 140, 144, 149),
              indicator: BoxDecoration(
                color: Color.fromARGB(255, 242, 246, 251),
                border: Border(
                    bottom: BorderSide(
                  width: 4,
                  color: Color.fromARGB(255, 7, 36, 94),
                )),
              ),
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.featured_play_list),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Materi"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Evaluasi"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.view_list_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Lainnya"),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                // Materi
                MateriTab(),
                // Evaluasi
                EvaluasiTab(),
                // lainnya
                LainTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
