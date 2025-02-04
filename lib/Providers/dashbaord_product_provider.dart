import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:fujitsuweb/Api/api.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class DashboardProductProvider with ChangeNotifier {
  bool isLoading = false;
  bool isLogin = false;
  var productData;

  productAllMethod(body, url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.postJson1(body, url).then((responseData) async {
      var value = json.decode(responseData.body);

      if (value != null &&
          value.containsKey('products') &&
          value['products'] is List) {
        productData = value["products"];

        isLogin = true;
        isLoading = false;
        notifyListeners();
      } else {
        showToastMessage("Product Fetch Issue!");
      }
    });
  }
}
