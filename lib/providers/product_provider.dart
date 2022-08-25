import 'package:flutter/foundation.dart';
import 'package:twiscode_test/constants/url_constant.dart';
import 'package:twiscode_test/models/basic_response_model.dart';
import 'package:twiscode_test/models/product_model.dart';
import 'package:twiscode_test/services/api_service.dart';

class ProductProvider with ChangeNotifier {
  List<Product>? products = [];
  bool? loading = false;
  BasicResponse resultProducts = BasicResponse();

  Future<BasicResponse> getProducts() async {
    loading = true;
    try {
      resultProducts = BasicResponse();
      final response = await APIService.postData(UrlConstant.productUrl);

      products?.clear();
      resultProducts = response;
      if (response.statusCode == 200) {
        for (var item in response.data) {
          products?.add(Product.fromJson(item));
        }
      }
      loading = false;
      notifyListeners();
      return resultProducts;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      loading = false;
      notifyListeners();
      return resultProducts;
    }
  }
}
