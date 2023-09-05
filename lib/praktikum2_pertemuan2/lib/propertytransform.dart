import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Transform")),
          body: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?t=st=1693869645~exp=1693870245~hmac=4288d59630f15c9025fbc6786e152902d78ca85e3084774245a54073103b389c'),
                fit: BoxFit.fitWidth,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
            ),
            height: 200,
            width: 300,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
            transform: Matrix4.rotationZ(-0.1),
          )),
    );
  }
}
