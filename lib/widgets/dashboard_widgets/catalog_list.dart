import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/pages/dashboard_detail_page.dart';
import 'package:lesson_1/utils/routes.dart';
import 'package:lesson_1/widgets/dashboard_widgets/catalog_item.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !context.isMobile
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20.0),
            shrinkWrap: true,
            itemCount: ItemList.products.length,
            itemBuilder: (context, index) {
              final catalog = ItemList.products[index];
              return InkWell(
                onTap: () {
                  //IF url has not query parameters
                  // context.vxNav
                  //   .push(Uri.parse(MyRoutes.detailRoute), params: catalog);

                  // if url has query parameters
                  context.vxNav.push(Uri(
                      path: MyRoutes.detailRoute,
                      queryParameters: {"id": catalog.id.toString()}));
                },
                child: CatalogItem(catalog: catalog),
              );
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: ItemList.products.length,
            itemBuilder: (context, index) {
              final catalog = ItemList.products[index];
              return InkWell(
                onTap: () {
                  //IF url has not query parameters
                  // context.vxNav
                  //   .push(Uri.parse(MyRoutes.detailRoute), params: catalog);

                  // if url has query parameters
                  context.vxNav.push(Uri(
                      path: MyRoutes.detailRoute,
                      queryParameters: {"id": catalog.id.toString()}));
                },
                child: CatalogItem(catalog: catalog),
              );
            },
          );
  }
}
