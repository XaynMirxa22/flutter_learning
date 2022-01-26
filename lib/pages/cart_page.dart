import 'package:flutter/material.dart';
import 'package:lesson_1/core/store.dart';
import 'package:lesson_1/models/cart.dart';
import 'package:lesson_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: "Cart".text.color(context.accentColor).make().centered(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
              builder: (context, __, _) {
                return "\$${_cart!.totalPrice}"
                    .text
                    .xl5
                    .color(context.accentColor)
                    .make();
              },
              mutations: {RemoveMutation},
              notifications: {}),
          30.0.widthBox,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.theme.buttonColor),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not Supported yet.".text.make(),
              ));
            },
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return _cart!.items.isEmpty
        ? "Nothing to Show".text.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.done),
                title: _cart.items[index].name.text.make(),
                trailing: IconButton(
                  onPressed: () {
                    RemoveMutation(item: _cart.items[index]);
                  },
                  icon: const Icon(Icons.remove_circle),
                ),
              );
            });
  }
}
