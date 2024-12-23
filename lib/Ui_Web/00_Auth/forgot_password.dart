import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_web/00_Auth/set_new_pass.dart';
import 'package:sizer/sizer.dart';

import '../../Values/AppColors.dart';
import '../../Values/Constants.dart';
import 'login_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController emailController = TextEditingController();
  bool isResetPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Center(
              child: SizedBox(
                  width: 650,
                  child: Image.asset("Assets/images/bg_design.png")),
            ),

            isResetPass == false
                ?
            Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10.h),

                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white_00,
                            border: Border.all(color: AppColors.borderColor)
                        ),
                        padding: EdgeInsets.all(11),
                        child: Image.asset("Assets/icons/ic_key.png",width: 25,height: 25)),

                    SizedBox(height: 3.h),

                    Text(
                      "Forgot password?",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 24.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    Text(
                      "No worries, we’ll send you reset instructions.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      "Email",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    TextFormField(
                        controller: emailController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack,
                            fontSize: 14.px
                        ),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter your email ",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey,
                              fontSize: 14.px
                          ),
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
                        )
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {

                        setState(() {
                          isResetPass = true;
                        });

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.mainGreen
                        ),
                        child: Center(
                          child: Text(
                            "Reset password",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px,
                                color: AppColors.white_00
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {

                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                            builder: (context) => LoginScreen()), (Route route) => false);

                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(Icons.arrow_back_rounded,color: AppColors.fontBlack,size: 20),

                          SizedBox(width: 0.6.w),

                          Text(
                            "Back To log in",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 12.px,
                                color: AppColors.fontBlack
                            ),
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            )
                :
            Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10.h),

                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white_00,
                            border: Border.all(color: AppColors.borderColor)
                        ),
                        padding: EdgeInsets.all(11),
                        child: Image.asset("Assets/icons/ic_mail.png",width: 25,height: 25)),

                    SizedBox(height: 3.h),

                    Text(
                      "Check your email",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 24.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    Text(
                      "We sent a password reset link to\nolivia@untitledui.com",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) => SetNewPassword()));

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.mainGreen
                        ),
                        child: Center(
                          child: Text(
                            "Open email app",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px,
                                color: AppColors.white_00
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 2.h),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          "Didn’t receive the email?",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                        SizedBox(width: 0.6.w),

                        Text(
                          "Click to resend",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 12.px,
                              color: AppColors.mainGreen
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {

                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                            builder: (context) => LoginScreen()), (Route route) => false);

                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(Icons.arrow_back_rounded,color: AppColors.fontBlack,size: 20),

                          SizedBox(width: 0.6.w),

                          Text(
                            "Back To log in",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 12.px,
                                color: AppColors.fontBlack
                            ),
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
