import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_1/core/store.dart';
import 'package:lesson_1/models/cart.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final catalog;
  AddToCart({Key? key, this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel? cartModel = (VxState.store as MyStore).cart;
    bool isAlreadyInCart = cartModel!.items.contains(catalog);

    return ElevatedButton(
      onPressed: () {
        if (!isAlreadyInCart) {
          AddMutation(item: catalog);
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
