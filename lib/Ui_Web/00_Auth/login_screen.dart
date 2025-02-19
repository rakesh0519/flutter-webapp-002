import 'package:flutter/material.dart';
import 'package:fujitsuweb/Providers/auth_provider.dart';
import 'package:fujitsuweb/Ui_Web/00_Dashboard/dashboard.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/admin_dashboard.dart';
import 'package:fujitsuweb/Ui_Web/00_Auth/forgot_password.dart';
import 'package:fujitsuweb/Ui_Web/00_Auth/register_screen.dart';
import 'package:sizer/sizer.dart';

import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isRememberMe = false;

  AuthProvider authProvider = AuthProvider();
  loginMethod() async {
    var data = {
      "username": userIdController.text,
      "password": passwordController.text
    };
    await authProvider.loginMethod(data, "/auth/login");

    if (authProvider.isLogin) {
      showToastMessageGreen("Login Successfully");
      if (userIdController.text == "Admin") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AdminDashboard()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
      }
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => Dashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                SizedBox(
                    width: 680,
                    child: Image.asset("Assets/images/bg_design.png")),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 19.h),
                        Image.asset(
                          "Assets/icons/logo.png",
                          fit: BoxFit.fill,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "Welcome back",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 24.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(height: 0.6.h),
                        Text(
                          "Welcome back! Please enter your details.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "User Id",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(height: 0.6.h),
                        TextFormField(
                            controller: userIdController,
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "Enter your user Id",
                              hintStyle: textStyle.SegoeUI.copyWith(
                                  color: AppColors.fontGrey, fontSize: 14.px),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        SizedBox(height: 3.h),
                        Text(
                          "Password",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(height: 0.6.h),
                        TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "******",
                              hintStyle: textStyle.SegoeUI.copyWith(
                                  color: AppColors.fontGrey, fontSize: 14.px),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          AppColors.fontGrey.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isRememberMe = !isRememberMe;
                                });
                              },
                              child: Image.asset(
                                  isRememberMe == true
                                      ? "Assets/icons/ic_checkbox_fill.png"
                                      : "Assets/icons/ic_checkbox.png",
                                  width: 18,
                                  height: 18),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Remember me",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px, color: AppColors.fontBlack),
                            ),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassword()));
                              },
                              child: Text(
                                "Forgot password",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 12.px,
                                    color: AppColors.mainGreen),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        InkWell(
                          onTap: () {
                            print('--------');
                            if (userIdController.text.isEmpty) {
                              showToastMessage('Plaese Enter your UserId');
                            } else if (passwordController.text.isEmpty) {
                              showToastMessage('Plaese Enter your Password');
                            } else {
                              loginMethod();
                            }
                            // if (userIdController.text == "Admin") {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => AdminDashboard()));
                            // } else {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => Dashboard()));
                            // }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.mainGreen),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.white_00),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account ?",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px, color: AppColors.fontBlack),
                            ),
                            SizedBox(width: 0.6.w),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                              child: Text(
                                "Sign up",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 12.px,
                                    color: AppColors.mainGreen),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          width > 900
              ? Expanded(
                  flex: MediaQuery.of(context).size.width < 800 ? 1 : 2,
                  child: Container(
                    color: AppColors.white_30,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "Assets/icons/login_bg.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
