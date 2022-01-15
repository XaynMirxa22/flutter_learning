import 'package:flutter/material.dart';
import 'package:lesson_1/pages/gridViewPage.dart';
import 'package:lesson_1/pages/homepage.dart';
import 'package:lesson_1/pages/listViewPage.dart';
import 'package:lesson_1/pages/table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MXK Learning App',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        //part 2 Input,Radio,Check,Label
        //home: const HomePage());

        //TODO:part 3
        //List View
        // home: const ListViewPage());

        //Grid View
        //home: const GridViewPage());

        //Table View
        home: const TablePage());
  }
}
