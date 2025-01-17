import 'package:flutter/cupertino.dart';

class UiProvider with ChangeNotifier {
  String dashboardPage = "Projects";
  String adminDashPage = "Users";

  changeDashboardPage(String value) {
    dashboardPage = value;
    notifyListeners();
  }

  changeAdminPage(String value) {
    print('value -----$value');
    adminDashPage = value;
    notifyListeners();
  }
}
