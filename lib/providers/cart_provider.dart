import 'package:flutter/foundation.dart';
import 'package:twiscode_test/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<Product>? products = [];
  bool? loading = false;
  int? totalItem = 0;

  void calculateTotalQty() {
    for (var item in products!) {
      totalItem = totalItem! + item.cartQuantity!;
      print(item.cartQuantity);
    }
    print("Total : $totalItem");
    print("TotalProduct : ${products?.length}");
    notifyListeners();
  }

  void addCart(Product product) {
    if (products!.isNotEmpty) {
      var productExists = products?.firstWhere((cart) => cart.id == product.id,
          orElse: () => product);
      productExists?.cartQuantity =
          productExists.cartQuantity! + product.cartQuantity!;
      products?.add(productExists!);
    } else {
      products?.add(product);
    }
    notifyListeners();
    calculateTotalQty();
  }
}
