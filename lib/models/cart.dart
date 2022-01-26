import 'package:velocity_x/velocity_x.dart';

import 'package:lesson_1/core/store.dart';
import 'package:lesson_1/models/catalog.dart';

class CartModel {
  static final _cart = CartModel._interval();

  CartModel._interval();

  factory CartModel() => _cart;

  ItemList _itemList = ItemList();

  final List<String> _itemIds = [];

  ItemList get catalog => _itemList;

  set catalog(ItemList newItemList) {
    _itemList = newItemList;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _itemList.getByID(id)).toList();

  //get total price of cart
  String get totalPrice =>
      items.fold("0", (total, current) => total + current.id[0]);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation({
    required this.item,
  });
  @override
  perform() {
    store!.cart!._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation({
    required this.item,
  });
  @override
  perform() {
    store!.cart!._itemIds.remove(item.id);
  }
}
