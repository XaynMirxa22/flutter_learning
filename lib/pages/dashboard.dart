import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/widgets/drawer.dart';
import 'package:lesson_1/widgets/item_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();

    loadDataFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dashboard')),
      ),
      drawer: MyDrawer.get(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ItemList.products.isNotEmpty
            ? ListView.builder(
                itemCount: ItemList.products.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: ItemList.products[index],
                  );
                  // return Text("data");
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  void loadDataFromJson() async {
    var data = await rootBundle.loadString('assets/files/item.json');
    var jsonData = jsonDecode(data)["products"];
    // print(jsonData);
    ItemList.products =
        List.from(jsonData).map<Item>((item) => Item.fromMap(item)).toList();
    print(ItemList.products);
    setState(() {});
  }
}
