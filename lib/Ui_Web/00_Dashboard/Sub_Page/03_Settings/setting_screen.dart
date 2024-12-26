import 'package:flutter/material.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:sizer/sizer.dart';

import '../../../../Values/Constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  String selected = "Setting";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: 250,
          child: Stack(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.borderColor
                    ),
                    height: 150,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white_00
                    ),
                    height: 100,
                  )

                ],
              ),

              Positioned(
                bottom: 0,
                left: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width-170,
                  child: Row(
                    children: [

                      Image.asset("Assets/images/big_avatar.png",width: 150,height: 150,),

                      SizedBox(width: 20),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Olivia Rhye",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 20.px,
                                    color: AppColors.fontLightBlack
                                ),
                              ),

                              Text(
                                "olivia@fujitsu.com",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontGrey
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
                          child: Row(
                            children: [

                              Image.asset("Assets/icons/ic_add_user.png",width: 20,height: 20),

                              SizedBox(width: 10),

                              Text(
                                "Share",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
                          child: Row(
                            children: [

                              Text(
                                "Logout",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontRed
                                ),
                              ),

                              SizedBox(width: 10),

                              Image.asset("Assets/icons/ic_logout.png",width: 20,height: 20),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        ),

        SizedBox(height: 20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                InkWell(
                  hoverColor: AppColors.white_00,
                  splashColor: AppColors.white_00,
                  onTap: () {

                    setState(() {
                      selected = "Setting";
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selected == "Setting" ? AppColors.selectColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 8),
                    child: Text(
                      "Settings",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px,
                          color: selected == "Setting" ? AppColors.darkGreen : AppColors.fontGrey
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                InkWell(
                  hoverColor: AppColors.white_00,
                  splashColor: AppColors.white_00,
                  onTap: () {

                    setState(() {
                      selected = "Resources";
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selected == "Resources" ? AppColors.selectColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 8),
                    child: Text(
                      "Resources",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px,
                          color: selected == "Resources" ? AppColors.darkGreen : AppColors.fontGrey
                      ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 30),

            Row(
              children: [

                SizedBox(width: 200),

                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Company Profile",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px,
                            color: AppColors.fontLightBlack
                        ),
                      ),

                      Text(
                        "Update your portfolio and bio.",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px,
                            color: AppColors.fontGrey
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  width: 500,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.borderColor)
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Public profile",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px,
                              color: AppColors.fontLightBlack
                          ),
                        ),

                        Text(
                          "This will be displayed on your profile.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px,
                              color: AppColors.fontGrey
                          ),
                        ),



                      ],
                    ),
                  ),
                ),

              ],
            )

          ],
        ),

      ],
    );
  }
}
