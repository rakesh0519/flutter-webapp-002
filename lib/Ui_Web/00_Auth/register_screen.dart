import 'package:flutter/material.dart';
import 'package:fujitsuweb/Providers/auth_provider.dart';
import 'package:fujitsuweb/Ui_Web/00_Auth/check_email.dart';
import 'package:fujitsuweb/Ui_Web/00_Auth/login_screen.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:sizer/sizer.dart';

import 'package:fujitsuweb/Values/Constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthProvider authProvider = AuthProvider();

  signupMethod() async {
    var data = {
      "company_name": companyController.text,
      "confirm_password": passwordController.text,
      "email": emailController.text,
      "firstname": firstNameController.text,
      "lastname": lastNameController.text,
      "password": passwordController.text,
      "phone": {
        "country_code": "+1",
        "mobileno": mobileController.text,
      },
      "username": emailController.text,
      "zip": "12345"
    };
    await authProvider.signiUpMethod(data, "/auth/register");
    if (authProvider.isLogin) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CheckEmail(
                    email: emailController.text,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          width > 900
              ? Expanded(
                  flex: MediaQuery.of(context).size.width < 800 ? 0 : 3,
                  child: Container(
                      color: AppColors.white_30,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "Assets/icons/register_bg.png",
                        fit: BoxFit.fill,
                      )))
              : SizedBox.shrink(),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Image.asset(
                      "Assets/icons/logo.png",
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Sign up",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 24.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Name",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.6.h),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              controller: firstNameController,
                              style: textStyle.SegoeUI.copyWith(
                                  color: AppColors.fontBlack, fontSize: 14.px),
                              cursorHeight: 15,
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: AppColors.white_00,
                                filled: true,
                                hintText: "First Name",
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
                                        color:
                                            AppColors.red_00.withOpacity(.4)),
                                    borderRadius: BorderRadius.circular(6)),
                              )),
                        ),
                        SizedBox(width: 1.w),
                        Expanded(
                          child: TextFormField(
                              controller: lastNameController,
                              style: textStyle.SegoeUI.copyWith(
                                  color: AppColors.fontBlack, fontSize: 14.px),
                              cursorHeight: 15,
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: AppColors.white_00,
                                filled: true,
                                hintText: "Last Name",
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
                                        color:
                                            AppColors.red_00.withOpacity(.4)),
                                    borderRadius: BorderRadius.circular(6)),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Phone No.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.6.h),
                    TextFormField(
                        controller: mobileController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter your phone number",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.red_00.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                        )),
                    SizedBox(height: 3.h),
                    Text(
                      "Company",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.6.h),
                    TextFormField(
                        controller: companyController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter your company name",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.red_00.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                        )),
                    SizedBox(height: 3.h),
                    Text(
                      "Email",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.6.h),
                    TextFormField(
                        controller: emailController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter your email",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
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
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        obscureText: true,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Create a password",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.fontGrey.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.red_00.withOpacity(.4)),
                              borderRadius: BorderRadius.circular(6)),
                        )),
                    SizedBox(height: 0.3.h),
                    Text(
                      "Must be at least 8 characters.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    InkWell(
                      onTap: () {
                        if (firstNameController.text.isEmpty) {
                          showToastMessage('Please Enter your FirstName');
                        } else if (lastNameController.text.isEmpty) {
                          showToastMessage('Please Enter your LastName');
                        } else if (mobileController.text.isEmpty) {
                          showToastMessage('Please Enter your phone Number');
                        } else if (companyController.text.isEmpty) {
                          showToastMessage('Please Enter your Company Name');
                        } else if (emailController.text.isEmpty) {
                          showToastMessage('Please Enter your Email');
                        } else if (passwordController.text.isEmpty) {
                          showToastMessage('Please Enter your password');
                        } else {
                          signupMethod();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckEmail(
                                        email: emailController.text,
                                      )));
                        }
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CheckEmail()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.mainGreen),
                        child: Center(
                          child: Text(
                            "Get Started",
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
                          "Already have an account ?",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(width: 0.6.w),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Log in",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 12.px, color: AppColors.mainGreen),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
