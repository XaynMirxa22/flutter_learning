import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class DashboardDetailPage extends StatelessWidget {
  final Item? catalog;

  const DashboardDetailPage({Key? key, @required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$999".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBlueishColor),
                  shape: MaterialStateProperty.all(
                    const StadiumBorder(),
                  )),
              child: "Buy".text.make(),
            ).wh(100.0, 50.0)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog!.id),
                child: Image.network(catalog!.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog!.id.text.xl4.bold.make(),
                      catalog!.name.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                    ],
                  ).py64(),
                ),
              ))
            ],
          )),
    );
  }
}
