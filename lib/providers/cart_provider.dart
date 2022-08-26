import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twiscode_test/models/cart_model.dart';
import 'package:twiscode_test/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<Cart> cartItems = [];
  bool? loading = false;
  int? totalItem = 0;
  num? totalPrice = 0;

  void loadCartCount() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('cart')) {
      List tempCart = await json.decode(prefs.getString('cart')!);

      cartItems = tempCart.map((cart) => Cart.fromJson(cart)).toList();
    }
    calculateTotalQty();
  }

  void calculateTotalQty() {
    totalItem = 0;
    totalPrice = 0;
    for (var item in cartItems) {
      totalItem = totalItem! + item.quantity!;
      totalPrice = totalPrice! + (item.quantity! * item.productPrice!);
    }
    if (kDebugMode) {
      print("Total Item : $totalItem");
      print("Total Price : $totalItem");
    }
    notifyListeners();
  }

  addCart(Product product, int index) async {
    final prefs = await SharedPreferences.getInstance();
    Cart cart = Cart(
        id: index,
        condition: product.conditionOfItem?.name,
        image: product.defaultPhoto?.imgPath,
        productId: product.id,
        productName: product.title,
        productPrice: num.tryParse(product.price!),
        quantity: 1,
        weight: product.weight);
    if (!prefs.containsKey('cart')) {
      cartItems.add(cart);
      saveCart();
    } else {
      List tempCart = await json.decode(prefs.getString('cart')!);

      cartItems = tempCart.map((cart) => Cart.fromJson(cart)).toList();

      final index = tempCart
          .indexWhere((element) => element["productId"] == cart.productId);
      if (index != -1) {
        cart.quantity = cartItems[index].quantity! + cart.quantity!;
        cartItems[index] = cart;
        saveCart();
      } else {
        cartItems.add(cart);
        saveCart();
      }
    }

    notifyListeners();

    calculateTotalQty();
  }

  saveCart() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('cart', json.encode(cartItems));
  }

  increase(int index) {
    cartItems[index].quantity = cartItems[index].quantity! + 1;
    calculateTotalQty();
    saveCart();
  }

  decrease(int index) {
    if (cartItems[index].quantity! > 1) {
      cartItems[index].quantity = cartItems[index].quantity! - 1;
    }else{
      cartItems.removeAt(index);
    }
    calculateTotalQty();
    saveCart();
  }

  void resetCart() {
    cartItems = [];
    totalItem = 0;
    notifyListeners();
  }
}
