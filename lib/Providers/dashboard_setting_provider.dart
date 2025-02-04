import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:fujitsuweb/Api/api.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class DashboardSettingProvider with ChangeNotifier {
  bool isLoading = false;
  bool isLogin = false;

  Map<String, dynamic>? profileData;

  getUserProfileMethod(String url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.getJson(url).then((responseData) async {
      if (responseData.statusCode == 200) {
        var value = json.decode(responseData.body);

        profileData = value;
        isLogin = true;
        notifyListeners();
      } else {
        showToastMessage("Get User Profile Error!");
      }

      isLoading = false;
      notifyListeners();
    }).catchError((error) {
      isLoading = false;
      isLogin = false;
      showToastMessage("Error: $error");
      notifyListeners();
    });
  }

  userLogoutMethod(String url) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    await ApiHandler.getJson(url).then((responseData) async {
      if (responseData.statusCode == 200) {
        isLogin = true;
      } else {
        showToastMessage("Get User Profile Error!");
      }

      isLoading = false;
      notifyListeners();
    }).catchError((error) {
      isLoading = false;
      isLogin = false;
      showToastMessage("Error: $error");
      notifyListeners();
    });
  }

  updateUserProfileMethod(
      Map<String, String> body, String url, File file) async {
    isLoading = true;
    isLogin = false;
    notifyListeners();

    try {
      var response = await ApiHandler.putMultipartJson(body, url, file);
      var responseData = await response.stream.bytesToString();
      var decodedData = json.decode(responseData);

      if (kDebugMode) {
        print("Response Code: ${response.statusCode}");
        print("Response Data: $decodedData");
      }

      if (response.statusCode == 200) {
        isLogin = true;
        isLoading = false;
        notifyListeners();
      } else {
        showToastMessage("Update User Profile Some Error!");
      }
    } catch (e) {
      debugPrint("Exception in updateUserProfileMethod: $e");
    }
  }
}
