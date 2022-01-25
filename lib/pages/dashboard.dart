import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/utils/routes.dart';
import 'package:lesson_1/widgets/dashboard_widgets/catalog_header.dart';
import 'package:lesson_1/widgets/dashboard_widgets/catalog_list.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: MyTheme.darkBlueishColor,
          child: const Icon(CupertinoIcons.cart),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if (ItemList.products.isNotEmpty)
                  const CatalogList().py16().expand()
                else
                  const CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Center(child: Text('Dashboard')),
  //     ),
  //     drawer: MyDrawer.get(),
  //     body: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: ItemList.products.isNotEmpty
  //           ? GridView.builder(
  //               itemCount: ItemList.products.length,
  //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                   crossAxisCount: 2),
  //               itemBuilder: (context, index) {
  //                 final item = ItemList.products[index];
  //                 return Card(
  //                     clipBehavior: Clip.antiAlias,
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: GridTile(
  //                       header: Container(
  //                         padding: const EdgeInsets.all(12),
  //                         decoration: const BoxDecoration(
  //                           color: Colors.grey,
  //                         ),
  //                         child: Text(item.name),
  //                       ),
  //                       child: Image.network(
  //                         item.image,
  //                       ),
  //                       footer: Container(
  //                         padding: const EdgeInsets.all(12),
  //                         decoration: const BoxDecoration(color: Colors.grey),
  //                         child: Text(
  //                           "Rs. ${item.id}",
  //                           style: TextStyle(color: Colors.black),
  //                         ),
  //                       ),
  //                     ));
  //               },
  //             )
  //           : const Center(
  //               child: CircularProgressIndicator(),
  //             ),
  //     ),
  //   );
  // }

  void loadDataFromJson() async {
    var data = await rootBundle.loadString('assets/files/item.json');
    var jsonData = jsonDecode(data)["products"];
    // print(jsonData);
    ItemList.products =
        List.from(jsonData).map<Item>((item) => Item.fromMap(item)).toList();
    //print(ItemList.products);
    setState(() {});
  }
}
