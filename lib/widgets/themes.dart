import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBlueishColor,
        accentColor: darkBlueishColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBlueishColor,
      accentColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        // textTheme: TextTheme(
        //     headline6: context.textTheme.headline6.apply(color: Colors.white)),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color darkBlueishColor = Color(0xff403b58);
  static Color lightBlueishColor = Vx.indigo500;
}
