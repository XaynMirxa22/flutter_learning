import 'package:flutter/material.dart';
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
    final _cart = CartModel();

    return SizedBox(
      height: 200.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl5.color(context.accentColor).make(),
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

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.done),
            title: _cart.items[index].name.text.make(),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_circle),
            ),
          );
        });
  }
}
