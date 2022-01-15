import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lesson_1/pages/gridViewPage.dart';
import 'package:lesson_1/pages/homepage.dart';
import 'package:lesson_1/pages/listViewPage.dart';
import 'package:lesson_1/pages/part_4.dart';
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
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.laila().fontFamily),
        //part 2 Input,Radio,Check,Label
        //home: const HomePage());

        //TODO:part 3
        //List View
        // home: const ListViewPage());

        //Grid View
        //home: const GridViewPage());

        //Table View
        //home: const TablePage());

        //TODO: Part4
        // Adding Image
        home: Part4());
  }
}
