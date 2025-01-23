import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_web/00_Auth/login_screen.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({super.key});

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  TextEditingController pinController = TextEditingController();

  bool isSendCode = false;
  bool isEmailVerified = false;

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
            isEmailVerified == true
                ? Center(
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
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              padding: EdgeInsets.all(11),
                              child: Image.asset("Assets/icons/ic_check.png",
                                  width: 25, height: 25)),
                          SizedBox(height: 3.h),
                          Text(
                            "Email verified",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 24.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(height: 0.6.h),
                          Text(
                            "Your password has been successfully reset.\nClick below to go back to the log in screen.",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(height: 3.h),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.mainGreen),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.white_00),
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
                                    color: AppColors.fontBlack),
                              ),
                              SizedBox(width: 0.6.w),
                              Text(
                                "Click to resend",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 12.px,
                                    color: AppColors.mainGreen),
                              ),
                            ],
                          ),
                          SizedBox(height: 3.h),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (Route route) => false);
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_back_rounded,
                                    color: AppColors.fontBlack, size: 20),
                                SizedBox(width: 0.6.w),
                                Text(
                                  "Back To log in",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Center(
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
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              padding: EdgeInsets.all(11),
                              child: Image.asset(
                                "Assets/icons/ic_mail.png",
                                width: 25,
                                height: 25,
                              )),
                          SizedBox(height: 3.h),
                          Text(
                            "Check your email",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 24.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(height: 0.6.h),
                          Text(
                            "we send a verification link to olivia@untitledui.com",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px, color: AppColors.fontBlack),
                          ),
                          isSendCode == false
                              ? SizedBox()
                              : SizedBox(height: 3.h),
                          isSendCode == true
                              ? Center(
                                  child: Pinput(
                                    controller: pinController,
                                    defaultPinTheme: PinTheme(
                                        textStyle: textStyle.SegoeUI.copyWith(
                                            fontSize: 30.px,
                                            color: AppColors.mainGreen),
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            color: AppColors.white_00,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: AppColors.mainGreen))),
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(height: 3.h),
                          isSendCode == true
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      isEmailVerified = true;
                                    });

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.mainGreen),
                                    child: Center(
                                      child: Text(
                                        "Verify email",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.white_00),
                                      ),
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSendCode = true;
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.mainGreen),
                                    child: Center(
                                      child: Text(
                                        "Enter code manually",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.white_00),
                                      ),
                                    ),
                                  ),
                                ),
                          SizedBox(height: 2.h),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (Route route) => false);
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_back_rounded,
                                    color: AppColors.fontBlack, size: 20),
                                SizedBox(width: 0.6.w),
                                Text(
                                  "Back To log in",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack),
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
