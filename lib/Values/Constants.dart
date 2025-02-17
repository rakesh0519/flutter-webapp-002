import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fujitsuweb/Values/AppColors.dart';

abstract class textStyle {

  static var SegoeUI = const TextStyle(
      fontFamily: "SegoeUI"
  );

  static var SegoeUILight = const TextStyle(
      fontFamily: "SegoeUI-Light"
  );

  static var SegoeUIBold = const TextStyle(
      fontFamily: "SegoeUI-Bold"
  );

  static var SegoeUISemiBold = const TextStyle(
      fontFamily: "SegoeUI-SemiBold"
  );

}

showToastMessage(String message) {

  BotToast.showText(
      text:message,
      contentColor: Colors.red,
      borderRadius: BorderRadius.circular(8)
  );

  // Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.red,
  //     textColor: Colors.white,
  //     fontSize: 14.0
  // );
}

showToastMessageGreen(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 14.0);
}

Widget appLoader() {
  return SizedBox(
    height: 45,
    child: SpinKitThreeBounce(
      color: AppColors.mainGreen,
      size: 25
    ),
  );
}