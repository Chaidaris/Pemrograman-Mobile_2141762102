import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text('MyApp'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Text(
                'BERITA TERBARU',
                style: TextStyle(fontSize: 14),
              ),
              height: 30.0,
              width: 15.0,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'PERTANDINGAN HARI INI',
                style: TextStyle(fontSize: 14),
              ),
              height: 30.0,
              width: 15.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.network(
                  'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?t=st=1693869645~exp=1693870245~hmac=4288d59630f15c9025fbc6786e152902d78ca85e3084774245a54073103b389c'),
            ),
          ],
        ),
      ),
    );
  }
}
