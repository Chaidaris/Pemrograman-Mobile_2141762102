import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Product Page (' + itemArgs.name + ')'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(itemArgs.name +
                ' Brand ' +
                itemArgs.nameProduct +
                ' Netto ' +
                itemArgs.netto +
                ' with ' +
                itemArgs.price.toString()),
          ],
        ),
      ),
    );
  }
}
