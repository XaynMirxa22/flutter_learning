import 'dart:js_util';

class Item {
  final String name;
  final String image;
  final String id;

  Item({this.id = "", this.name = "", this.image = ""});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["idDrink"], image: map["strDrinkThumb"], name: map["strDrink"]);
  }

  toMap() => {"idDrink": id, "strDrinkThumb": image, "strDrink": name};
}

class ItemList {
  static final _itemModel = ItemList._interval();
  ItemList._interval();
  factory ItemList() => _itemModel;

  static List<Item> products = [];

  //get item by id
  Item getByID(String id) => products.firstWhere((element) => element.id == id);

  Item getByPos(int pos) => products[pos];
}
