import 'package:flutter/material.dart';
import 'package:lesson_1/models/cart.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:lesson_1/pages/cart_page.dart';
import 'package:lesson_1/widgets/dashboard_widgets/catalog_image.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item? catalog;
  const CatalogItem({Key? key, @required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog!.id),
          child: CatalogImage(image: catalog!.image),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog!.id.text.lg.bold.make(),
            catalog!.name.text.textStyle(context.captionStyle!).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$999".text.bold.lg.make(),
                AddToCart(catalog: catalog),
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py8();
  }
}

class AddToCart extends StatefulWidget {
  final catalog;
  const AddToCart({Key? key, this.catalog}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final catalogModel = ItemList();
        final cartModel = CartModel();
        cartModel.catalog = catalogModel;
        cartModel.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      child: isAdded ? Icon(Icons.done) : Icon(Icons.local_grocery_store),
    );
  }
}
