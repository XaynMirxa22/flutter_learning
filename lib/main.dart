import 'package:flutter/material.dart';
import 'package:lesson_1/core/store.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/pages/cart_page.dart';
import 'package:lesson_1/pages/dashboard.dart';
import 'package:lesson_1/pages/dashboard_detail_page.dart';
import 'package:lesson_1/pages/homepage.dart';
import 'package:lesson_1/pages/part_4.dart';
import 'package:lesson_1/utils/routes.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(
    store: MyStore(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (__, _) => const MaterialPage(child: Part4()),
        MyRoutes.homeRoute: (__, _) => const MaterialPage(child: HomePage()),
        MyRoutes.loginRoute: (__, _) => const MaterialPage(child: Part4()),
        MyRoutes.dashboardRoute: (__, _) =>
            const MaterialPage(child: Dashboard()),
        MyRoutes.detailRoute: (uri, params) {
          final catalog = (VxState.store as MyStore)
              .product
              ?.getByID(uri.queryParameters["id"].toString());

          return MaterialPage(
              child: DashboardDetailPage(
            catalog: catalog,
          ));
        },
        MyRoutes.cartRoute: (__, _) => const MaterialPage(child: CartPage()),
      }),
      debugShowCheckedModeBanner: false,
      title: 'MXK Product App',
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // initialRoute: MyRoutes.dashboardRoute,
      // routes: {
      //   "/": (context) => const Part4(),
      //   MyRoutes.homeRoute: (context) => const HomePage(),
      //   MyRoutes.loginRoute: (context) => const Part4(),
      //   MyRoutes.dashboardRoute: (context) => const Dashboard(),
      //   MyRoutes.cartRoute: (context) => const CartPage(),
      // },
    );
  }
}
