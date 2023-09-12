import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 205.6,
                      height: 50,
                      child: Text(
                        'Authentic Food',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 205.6,
                      height: 50,
                      child: Text(
                        'Worldwide Culinary',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 410.5,
                    height: 100,
                    child: Image.network(
                      'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?t=st=1693869645~exp=1693870245~hmac=4288d59630f15c9025fbc6786e152902d78ca85e3084774245a54073103b389c',
                      width: 610,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      'Cuisines around the world',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    color: Colors.orange,
                    child: Text(
                      'Discover the best foods from over 1,000 restaurants',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 100,
                            child: Image.network(
                              'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?t=st=1693869645~exp=1693870245~hmac=4288d59630f15c9025fbc6786e152902d78ca85e3084774245a54073103b389c',
                              width: 200,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 210,
                            height: 100,
                            child: Text(
                              'The culinary that is being talked about by many people in the world for being the #1 food',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Text(
                        'Indonesian Food',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 100,
                            child: Image.network(
                              'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?t=st=1693869645~exp=1693870245~hmac=4288d59630f15c9025fbc6786e152902d78ca85e3084774245a54073103b389c',
                              width: 200,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 210,
                            height: 100,
                            child: Text(
                              'A cuisine with many types of spices and',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Text(
                        'Indian Food',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
