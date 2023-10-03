import 'package:flutter/material.dart';
import 'package:pertemuan6/entryForm.dart';
import 'package:sqflite/sqflite.dart';
import 'dbhelper.dart';
import 'models/item.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];

  @override
  void initState() {
    super.initState();
    updateListView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: Column(
        children: [
          Expanded(
            child: itemList.isEmpty
                ? Center(child: Text('Belum ada item'))
                : createListView(),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Tambah Item"),
                onPressed: () async {
                  var item = await navigateToEntryForm(
                    context,
                    Item(0, '', 0),
                  );
                  if (item != null) {
                    int result = await dbHelper.insert(item);
                    if (result > 0) {
                      updateListView();
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Item> navigateToEntryForm(BuildContext context, Item item) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return EntryForm(item);
      }),
    );
    return result;
  }

  ListView createListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(itemList[index].name),
          subtitle: Text(itemList[index].price.toString()),
          onTap: () async {
            var item = await navigateToEntryForm(context, itemList[index]);
            if (item != null) {
              int result = await dbHelper.update(item);
              if (result > 0) {
                updateListView();
              }
            }
          },
        );
      },
    );
  }

  void updateListView() async {
    List<Item> items = await dbHelper.getItemList();
    setState(() {
      itemList = items;
      count = items.length;
    });
  }
}
