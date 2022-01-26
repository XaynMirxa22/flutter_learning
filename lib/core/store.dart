import 'package:lesson_1/models/cart.dart';
import 'package:lesson_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  ItemList? product;
  CartModel? cart;

  MyStore() {
    product = ItemList();
    cart = CartModel();
    cart!.catalog = product!;
  }
}
