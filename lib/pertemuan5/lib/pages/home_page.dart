import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', nameProduct: 'Gulaku', netto: '200g', price: 5000),
    Item(name: 'Salt', nameProduct: 'Kapal', netto: '500g', price: 2000),
    Item(name: 'Coffe', nameProduct: 'Nescafe', netto: '200g', price: 3500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text('Name',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(
                              child: Text('Product',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(
                              child: Text('Netto',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(
                            child: Text(
                              'Price',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(child: Text(item.name)),
                        Expanded(child: Text(item.nameProduct)),
                        Expanded(child: Text(item.netto)),
                        Expanded(
                          child: Text(
                            'Rp.' + item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]),
                    )
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
