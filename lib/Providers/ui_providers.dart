import 'package:flutter/cupertino.dart';

class UiProvider with ChangeNotifier{

  String dashboardPage = "Setting";
  //String dashboardPage = "Projects";

  changeDashboardPage(String value) {
    dashboardPage = value;
    notifyListeners();
  }


}