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
  static List<Item> products = [];

  //get item by id
  static Item getByID(String id) =>
      products.firstWhere((element) => element.id == id);

  static Item getByPos(int pos) => products[pos];
}
