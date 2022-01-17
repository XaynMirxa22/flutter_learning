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
  //  = [
  // Item(
  //     name: "155 Belmont",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg",
  //     id: "15346"),
  // Item(
  //     name: "57 Chevy with a White License Plate",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg",
  //     id: "14029"),
  // Item(
  //     name: "747 Drink",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/i9suxb1582474926.jpg",
  //     id: "178318"),
  // Item(
  //     name: "9 1/2 Weeks",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/xvwusr1472669302.jpg",
  //     id: "16108"),
  // Item(
  //     name: "A Gilligan's Island",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/wysqut1461867176.jpg",
  //     id: "16943"),
  // Item(
  //     name: "A True Amaretto Sour",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/rptuxy1472669372.jpg",
  //     id: "17005"),
  // Item(
  //     name: "A.D.M. (After Dinner Mint)",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/ruxuvp1472669600.jpg",
  //     id: "14560"),
  // Item(
  //     name: "A1",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/2x8thr1504816928.jpg",
  //     id: "17222"),
  // Item(
  //     name: "Abbey Martini",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/2mcozt1504817403.jpg",
  //     id: "17223"),
  // Item(
  //     name: "Absolut Summertime",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/trpxxs1472669662.jpg",
  //     id: "14107"),
  // Item(
  //     name: "Absolutely Fabulous",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg",
  //     id: "17224"),
  // Item(
  //     name: "Absolutly Screwed Up",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/yvxrwv1472669728.jpg",
  //     id: "16134"),
  // Item(
  //     name: "Ace",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg",
  //     id: "17225"),
  // Item(
  //     name: "Adam & Eve",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/vfeumw1504819077.jpg",
  //     id: "17226"),
  // Item(
  //     name: "Addington",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/ib0b7g1504818925.jpg",
  //     id: "17227"),
  // Item(
  //     name: "Addison",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/yzva7x1504820300.jpg",
  //     id: "17228"),
  // Item(
  //     name: "Addison Special",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/4vo5651493068493.jpg",
  //     id: "14272"),
  // Item(
  //     name: "Adios Amigos Cocktail",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/8nk2mp1504819893.jpg",
  //     id: "17229"),
  // Item(
  //     name: "Afterglow",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/vuquyv1468876052.jpg",
  //     id: "12560"),
  // Item(
  //     name: "Alice Cocktail",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/qyqtpv1468876144.jpg",
  //     id: "12562"),
  // Item(
  //     name: "Amaretto fizz",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/92h3jz1582474310.jpg",
  //     id: "178321"),
  // Item(
  //     name: "Aperol Spritz",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/iloasq1587661955.jpg",
  //     id: "178325"),
  // Item(
  //     name: "Apple Highball",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/66mt9b1619695719.jpg",
  //     id: "178353"),
  // Item(
  //     name: "Apple Karate",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/syusvw1468876634.jpg",
  //     id: "12564"),
  // Item(
  //     name: "Mountain Bramble",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/stwiva1619704025.jpg",
  //     id: "178355"),
  // Item(
  //     name: "Munich Mule",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/rj55pl1582476101.jpg",
  //     id: "178315"),
  // Item(
  //     name: "New York Lemonade",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/b3n0ge1503565473.jpg",
  //     id: "13204"),
  // Item(
  //     name: "Oatmeal Cookie",
  //     image:
  //         "https://www.thecocktaildb.com/images/media/drink/bsvmlg1515792693.jpg",
  //     id: "17266")
  // ];
}
