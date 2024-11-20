import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1',
      price: '1.549.000',
      description: 'Timeless style with unmatched comfort.',
      imagePath: 'lib/images/air force 1.png',
    ),
    Shoe(
      name: 'Giannis Immortality',
      price: '1.199.000',
      description: 'Lightweight, dynamic, made for speed.',
      imagePath: 'lib/images/giannis immortality.png',
    ),
    Shoe(
      name: 'LeBron AMPD EP',
      price: '1.488.000',
      description: 'Elite performance, bold modern design.',
      imagePath: 'lib/images/lebron nxxt gen ampd ep.png',
    ),
    Shoe(
      name: 'Nike Dunk Low SE',
      price: '2.099.000',
      description: 'Retro style for everyday wear.',
      imagePath: 'lib/images/nike dunk low se.png',
    ),
    Shoe(
      name: 'Nike P-6000',
      price: '1.729.000',
      description: '2000s-inspired, breathable, all-day comfort.',
      imagePath: 'lib/images/nike p-6000.png',
    )
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
