import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:fujitsuweb/Api/api.dart';
import 'package:fujitsuweb/Values/Constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  bool isLoading = false;
  bool isLogin = false;

  loginMethod(body, url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.postJson(body, url).then((responseData) async {
      if (responseData.statusCode == 200) {
        print(responseData.body);
        var cookie = responseData.headers["set-cookie"];

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("cookie", cookie);
        prefs.setBool("isLogin", true);

        isLogin = true;
        isLoading = false;
        notifyListeners();
      } else {
        showToastMessage("Login Error !");
      }
    });
  }

  signiUpMethod(body, url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.postJson(body, url).then((responseData) async {
      if (kDebugMode) {
        print(responseData.statusCode);
      }

      var value = json.decode(responseData.body);
      if (kDebugMode) {
        print(value);
      }
      if (responseData.statusCode == 200) {
        isLogin = true;
        isLoading = false;
        notifyListeners();
      } else {
        showToastMessage("SignUp Error !");
      }
    });
  }

  verifyUserRegistrationMethod(body, url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.postJson(body, url).then((responseData) async {
      if (kDebugMode) {
        print(responseData.statusCode);
      }

      var value = json.decode(responseData.body);
      if (kDebugMode) {
        print(value);
      }
      if (responseData.statusCode == 200) {
        isLogin = true;
        isLoading = false;
        notifyListeners();
      } else {
        showToastMessage("SignUp Error !");
      }
    });
  }
}
