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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$999".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(
                    const StadiumBorder(),
                  )),
              child: "Add To Cart".text.make(),
            ).wh(120.0, 50.0)
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
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog!.id.text
                          .color(context.accentColor)
                          .xl4
                          .bold
                          .make(),
                      catalog!.name.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                      "Amet aliquyam dolor dolore sed dolores, Amet aliquyam dolor dolore sed dolores, duo dolore kasd sed takimata ut elitr et magna. Invidunt diam rebum kasd et ea eirmod lorem kasd ut."
                          .text
                          .justify
                          .textStyle(context.captionStyle!)
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ))
            ],
          )),
    );
  }
}
