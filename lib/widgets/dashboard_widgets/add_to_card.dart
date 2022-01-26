import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_1/models/cart.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final catalog;
  const AddToCart({Key? key, this.catalog}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    final cartModel = CartModel();

    bool isAlreadyInCart = cartModel.items.contains(widget.catalog);

    return ElevatedButton(
      onPressed: () {
        if (!isAlreadyInCart) {
          isAlreadyInCart = isAlreadyInCart.toggle();
          final catalogModel = ItemList();
          cartModel.catalog = catalogModel;
          cartModel.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      child: isAlreadyInCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
