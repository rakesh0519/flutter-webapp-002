import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Values/AppColors.dart';
import '../../Values/Constants.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

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
                        child: Image.asset("Assets/icons/ic_lock.png",width: 25,height: 25)),

                    SizedBox(height: 3.h),

                    Text(
                      "Set new password",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 24.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    Text(
                      "Your new password must be different to previously\nused passwords.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      "Password",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    TextFormField(
                        controller: passwordController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack,
                            fontSize: 14.px
                        ),
                        obscureText: true,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "********",
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

                    Text(
                      "Confirm Password",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    TextFormField(
                        controller: cPasswordController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack,
                            fontSize: 14.px
                        ),
                        obscureText: true,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "********",
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

                    Row(
                      children: [

                        Container(
                            decoration: BoxDecoration(
                              color: AppColors.fontGrey.withOpacity(0.2),
                              shape: BoxShape.circle
                            ),
                            padding: EdgeInsets.all(2),
                            child: Icon(Icons.check,color: AppColors.white_00,size: 13)),

                        SizedBox(width: 1.w),

                        Text(
                          "Must be at least 8 characters",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 1.h),

                    Row(
                      children: [

                        Container(
                            decoration: BoxDecoration(
                                color: AppColors.fontGrey.withOpacity(0.2),
                                shape: BoxShape.circle
                            ),
                            padding: EdgeInsets.all(2),
                            child: Icon(Icons.check,color: AppColors.white_00,size: 13)),

                        SizedBox(width: 1.w),

                        Text(
                          "Must contain one special character",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                      ],
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

                    Row(
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
                        child: Image.asset("Assets/icons/ic_check.png",width: 25,height: 25)),

                    SizedBox(height: 3.h),

                    Text(
                      "Password reset",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 24.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    Text(
                      "Your password has been successfully reset.\nClick below to go back to the log in screen.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {



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
                            "Continue",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px,
                                color: AppColors.white_00
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Row(
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
