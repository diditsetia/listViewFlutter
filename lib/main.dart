import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> dataKasar = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 1; i < 30; i++) {
  //     dataKasar.add(Text(
  //       "CUK" + i.toString(),
  //       style: TextStyle(fontSize: 30),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Kata Kasar"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      dataKasar.add(Text(" Su ke - " + counter.toString(), style: TextStyle(fontSize: 35),));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      dataKasar.removeLast();
                      counter--;
                    });
                  },
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: dataKasar,
            )
          ],
        ),
      ),
    );
  }
}
