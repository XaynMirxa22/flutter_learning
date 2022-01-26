import 'package:flutter/material.dart';
import 'package:lesson_1/core/store.dart';
import 'package:lesson_1/pages/cart_page.dart';
import 'package:lesson_1/pages/dashboard.dart';
import 'package:lesson_1/pages/homepage.dart';
import 'package:lesson_1/pages/part_4.dart';
import 'package:lesson_1/utils/routes.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MXK Product App',
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.cartRoute,
      routes: {
        "/": (context) => const Part4(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const Part4(),
        MyRoutes.dashboardRoute: (context) => const Dashboard(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
