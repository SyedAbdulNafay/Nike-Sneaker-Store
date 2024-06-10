import 'package:sneaker_store/models/shoe.dart';

class ShoeService {
  final List<Shoe> shoes = [
    Shoe(
        name: "Air Force 1",
        price: 99.99,
        description:
            "The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine",
        imagePath: "assets/images/airforce1.png"),
    Shoe(
        name: "Nike Dunk High",
        price: 115,
        description:
            "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly shined overlays and classic team colors. With its iconic hoops design, the Nike Dunk Low channels '80s vintage back onto the streets while its padded, low-cut collar lets you take your game anywhere—in comfort.",
        imagePath: "assets/images/dunks.png"),
    Shoe(
        name: "Nike Dunk High",
        price: 115,
        description:
            "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly shined overlays and classic team colors. With its iconic hoops design, the Nike Dunk Low channels '80s vintage back onto the streets while its padded, low-cut collar lets you take your game anywhere—in comfort.",
        imagePath: "assets/images/dunks2.png"),
    Shoe(
        name: "Nike Dunk High",
        price: 115,
        description:
            "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly shined overlays and classic team colors. With its iconic hoops design, the Nike Dunk Low channels '80s vintage back onto the streets while its padded, low-cut collar lets you take your game anywhere—in comfort.",
        imagePath: "assets/images/jordan.png"),
    Shoe(
        name: "Air Force 1",
        price: 99.99,
        description:
            "While Kevin Durant’s all-timer status is already cemented, his hooper soul can’t be soothed unless he’s on the court, perfecting his craft. Put in the work to be great in the KD17, a shoe for gym rats and those who insist on running it back. A forefoot Air Zoom unit enhances your first step. We combined it with Nike Air cushioning to fuel full court sprints and defensive stops that can decide games. This special design pays homage to the '90s. It's when KD fell in love with watching basketball legends whom he could model his game after.",
        imagePath: "assets/images/kyrie.png"),
  ];

  final List<Shoe> userCart = [];

  void addToCart(Shoe shoe){
    userCart.add(shoe);
    print(userCart);
  }

  void removeFromCart(String shoeName){
    userCart.removeWhere((shoe) => shoe.name == shoeName);
  }
}
