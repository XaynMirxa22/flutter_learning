import 'package:flutter/material.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/pages/dashboard_detail_page.dart';
import 'package:lesson_1/widgets/dashboard_widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ItemList.products.length,
      itemBuilder: (context, index) {
        final catalog = ItemList.products[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DashboardDetailPage(
                        catalog: catalog,
                      ))),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
