import 'package:flutter/cupertino.dart';

class UiProvider with ChangeNotifier{

  String dashboardPage = "Projects";

  changeDashboardPage(String value) {
    dashboardPage = value;
    notifyListeners();
  }


}