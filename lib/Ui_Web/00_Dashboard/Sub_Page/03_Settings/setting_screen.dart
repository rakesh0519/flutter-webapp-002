// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:sizer/sizer.dart';

import 'package:fujitsuweb/Ui_Web/00_Auth/login_screen.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String selected = "Setting";

  TextEditingController titleController =
      TextEditingController(text: "Untitled UI");
  TextEditingController tagController = TextEditingController(
      text:
          "Untitled UI is the ultimate Figma UI kit and design system. Kickstart any project and level up as a designer.");

  bool hideJSeries = false;
  bool disablePush = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: AppColors.borderColor),
                      height: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(color: AppColors.white_00),
                      height: 100,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 170,
                    child: Row(
                      children: [
                        Image.asset(
                          "Assets/images/big_avatar.png",
                          width: width / 6,
                          height: height / 6,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                width > 680
                                    ? Text(
                                        "Olivia Rhye",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 20.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                      )
                                    : SizedBox.shrink(),
                                width > 680
                                    ? Text(
                                        "olivia@fujitsu.com",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.fontGrey),
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        width > 680
                            ? Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.borderColor),
                                      borderRadius: BorderRadius.circular(8)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "Assets/icons/ic_add_user.png",
                                          width: 20,
                                          height: 20),
                                      SizedBox(width: 10),
                                      Text(
                                        "Share",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        SizedBox(width: 10),
                        width > 680
                            ? Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                      (Route<dynamic> route) => false,
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        borderRadius: BorderRadius.circular(8)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Logout",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontRed),
                                        ),
                                        SizedBox(width: 10),
                                        Image.asset(
                                            "Assets/icons/ic_logout.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          width < 680
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Olivia Rhye",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 20.px, color: AppColors.fontLightBlack),
                    ),
                    Text(
                      "olivia@fujitsu.com",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontGrey),
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          child: Row(
                            children: [
                              Image.asset("Assets/icons/ic_add_user.png",
                                  width: 20, height: 20),
                              SizedBox(width: 10),
                              Text(
                                "Share",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 2.h),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13, vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Logout",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontRed),
                                ),
                                SizedBox(width: 10),
                                Image.asset("Assets/icons/ic_logout.png",
                                    width: 20, height: 20),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              : SizedBox.shrink(),
          SizedBox(height: 3.h),
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
                          color: selected == "Setting"
                              ? AppColors.selectColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(6)),
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 6, bottom: 8),
                      child: Text(
                        "Settings",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px,
                            color: selected == "Setting"
                                ? AppColors.darkGreen
                                : AppColors.fontGrey),
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
                          color: selected == "Resources"
                              ? AppColors.selectColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(6)),
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 6, bottom: 8),
                      child: Text(
                        "Resources",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px,
                            color: selected == "Resources"
                                ? AppColors.darkGreen
                                : AppColors.fontGrey),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              selected == "Setting"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        width > 1000
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Company Profile",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        Text(
                                          "Update your portfolio and bio.",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          color: AppColors.white_00),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Public profile *",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors
                                                        .fontLightBlack),
                                          ),
                                          Text(
                                            "This will be displayed on your profile.",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                              controller: titleController,
                                              style: textStyle.SegoeUI.copyWith(
                                                  color: AppColors.fontBlack,
                                                  fontSize: 14.px),
                                              cursorHeight: 15,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                fillColor: AppColors.white_00,
                                                filled: true,
                                                hintText: "",
                                                hintStyle:
                                                    textStyle.SegoeUI.copyWith(
                                                        color:
                                                            AppColors.fontGrey,
                                                        fontSize: 14.px),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors
                                                                .fontGrey
                                                                .withOpacity(
                                                                    .4)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors
                                                                .fontGrey
                                                                .withOpacity(
                                                                    .4)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors
                                                                .fontGrey
                                                                .withOpacity(
                                                                    .4)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: AppColors.red_00
                                                            .withOpacity(.4)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                              )),
                                          SizedBox(height: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: Center(
                                                    child: Text(
                                                      "untitledui.com/profile/",
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontGrey),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: VerticalDivider(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(0.4)),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: titleController,
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontBlack,
                                                            fontSize: 14.px),
                                                    cursorHeight: 15,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      fillColor:
                                                          AppColors.white_00,
                                                      filled: true,
                                                      hintText: "",
                                                      hintStyle: textStyle
                                                              .SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontGrey,
                                                              fontSize: 14.px),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                Image.asset(
                                                    "Assets/icons/ic_help.png",
                                                    width: 15,
                                                    height: 15),
                                                SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Tagline *",
                                                style: textStyle.SegoeUISemiBold
                                                    .copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors
                                                            .fontLightBlack),
                                              ),
                                              SizedBox(width: 6),
                                              Image.asset(
                                                  "Assets/icons/ic_help.png",
                                                  width: 15,
                                                  height: 15),
                                            ],
                                          ),
                                          Text(
                                            "A quick snapshot of your company.",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                            controller: tagController,
                                            style: textStyle.SegoeUI.copyWith(
                                                color: AppColors.fontBlack,
                                                fontSize: 14.px),
                                            maxLines: 3,
                                            cursorHeight: 15,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              fillColor: AppColors.white_00,
                                              filled: true,
                                              hintText: "",
                                              hintStyle:
                                                  textStyle.SegoeUI.copyWith(
                                                      color: AppColors.fontGrey,
                                                      fontSize: 14.px),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: AppColors
                                                              .fontGrey
                                                              .withOpacity(.4)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.red_00
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "40 characters left",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Text(
                                            "Company logo *",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors
                                                        .fontLightBlack),
                                          ),
                                          Text(
                                            "Update your company logo and then choose\nwhere you want it to display.",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  "Assets/images/green_logo.png",
                                                  width: 140),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color: AppColors
                                                              .borderColor)),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      10),
                                                              color: AppColors
                                                                  .white_00,
                                                              border: Border.all(
                                                                  color: AppColors
                                                                      .borderColor)),
                                                          padding:
                                                              EdgeInsets.all(
                                                                  11),
                                                          child: Image.asset(
                                                              "Assets/icons/ic_upload.png",
                                                              width: 25,
                                                              height: 25)),
                                                      SizedBox(height: 6),
                                                      Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Click to upload ',
                                                              style: textStyle
                                                                      .SegoeUISemiBold
                                                                  .copyWith(
                                                                      fontSize:
                                                                          14.px,
                                                                      color: AppColors
                                                                          .mainGreen),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'or drag and drop',
                                                              style: textStyle
                                                                      .SegoeUI
                                                                  .copyWith(
                                                                      fontSize:
                                                                          14.px,
                                                                      color: AppColors
                                                                          .fontGrey),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                        style: textStyle.SegoeUI
                                                            .copyWith(
                                                                fontSize: 12.px,
                                                                color: AppColors
                                                                    .fontBlack),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Text(
                                            "Branding",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors
                                                        .fontLightBlack),
                                          ),
                                          Text(
                                            "Add your logo to reports and emails.",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            "View Examples",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors.mainGreen),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Image.asset(
                                                  "Assets/icons/ic_checkbox_fill.png",
                                                  width: 16,
                                                  height: 16,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Reports",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                  Text(
                                                    "Include my logo in summary reports.",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Image.asset(
                                                  "Assets/icons/ic_checkbox_fill.png",
                                                  width: 16,
                                                  height: 16,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Emails",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                  Text(
                                                    "Include my logo in summary emails.",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Text(
                                            "Social profiles",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors
                                                        .fontLightBlack),
                                          ),
                                          SizedBox(height: 15),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: Center(
                                                    child: Text(
                                                      "twitter.com/",
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontGrey),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: VerticalDivider(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(0.4)),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: titleController,
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontBlack,
                                                            fontSize: 14.px),
                                                    cursorHeight: 15,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      fillColor:
                                                          AppColors.white_00,
                                                      filled: true,
                                                      hintText: "",
                                                      hintStyle: textStyle
                                                              .SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontGrey,
                                                              fontSize: 14.px),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: Center(
                                                    child: Text(
                                                      "facebook.com/",
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontGrey),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: VerticalDivider(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(0.4)),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: titleController,
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontBlack,
                                                            fontSize: 14.px),
                                                    cursorHeight: 15,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      fillColor:
                                                          AppColors.white_00,
                                                      filled: true,
                                                      hintText: "",
                                                      hintStyle: textStyle
                                                              .SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontGrey,
                                                              fontSize: 14.px),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: Center(
                                                    child: Text(
                                                      "linkedin.com/company/",
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontGrey),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                  height: 36,
                                                  child: VerticalDivider(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(0.4)),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: titleController,
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontBlack,
                                                            fontSize: 14.px),
                                                    cursorHeight: 15,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      fillColor:
                                                          AppColors.white_00,
                                                      filled: true,
                                                      hintText: "",
                                                      hintStyle: textStyle
                                                              .SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontGrey,
                                                              fontSize: 14.px),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(child: SizedBox()),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 38,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: AppColors.white_00,
                                                      border: Border.all(
                                                          color: AppColors
                                                              .darkBorderColor
                                                              .withOpacity(
                                                                  0.3))),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15),
                                                  child: Center(
                                                    child: Text(
                                                      "Cancel",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .selectIconColor),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 15),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 38,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color:
                                                          AppColors.mainGreen),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  child: Center(
                                                    child: Text(
                                                      "Save changes",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .white_00),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Company Profile",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  Text(
                                    "Update your portfolio and bio.",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontGrey),
                                  ),
                                  SizedBox(height: 1.h),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Public profile *",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        Text(
                                          "This will be displayed on your profile.",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 10),
                                        TextFormField(
                                            controller: titleController,
                                            style: textStyle.SegoeUI.copyWith(
                                                color: AppColors.fontBlack,
                                                fontSize: 14.px),
                                            cursorHeight: 15,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              fillColor: AppColors.white_00,
                                              filled: true,
                                              hintText: "",
                                              hintStyle:
                                                  textStyle.SegoeUI.copyWith(
                                                      color: AppColors.fontGrey,
                                                      fontSize: 14.px),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.fontGrey
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: AppColors
                                                              .fontGrey
                                                              .withOpacity(.4)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: AppColors.red_00
                                                          .withOpacity(.4)),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                            )),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(0.4)),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: Center(
                                                  child: Text(
                                                    "untitledui.com/profile/",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontGrey),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: VerticalDivider(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: titleController,
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          color: AppColors
                                                              .fontBlack,
                                                          fontSize: 14.px),
                                                  cursorHeight: 15,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    fillColor:
                                                        AppColors.white_00,
                                                    filled: true,
                                                    hintText: "",
                                                    hintStyle: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontGrey,
                                                            fontSize: 14.px),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              Image.asset(
                                                  "Assets/icons/ic_help.png",
                                                  width: 15,
                                                  height: 15),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Tagline *",
                                              style: textStyle.SegoeUISemiBold
                                                  .copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors
                                                          .fontLightBlack),
                                            ),
                                            SizedBox(width: 6),
                                            Image.asset(
                                                "Assets/icons/ic_help.png",
                                                width: 15,
                                                height: 15),
                                          ],
                                        ),
                                        Text(
                                          "A quick snapshot of your company.",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 10),
                                        TextFormField(
                                          controller: tagController,
                                          style: textStyle.SegoeUI.copyWith(
                                              color: AppColors.fontBlack,
                                              fontSize: 14.px),
                                          maxLines: 3,
                                          cursorHeight: 15,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            fillColor: AppColors.white_00,
                                            filled: true,
                                            hintText: "",
                                            hintStyle:
                                                textStyle.SegoeUI.copyWith(
                                                    color: AppColors.fontGrey,
                                                    fontSize: 14.px),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: AppColors
                                                            .fontGrey
                                                            .withOpacity(.4)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                            errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors.red_00
                                                        .withOpacity(.4)),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "40 characters left",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Text(
                                          "Company logo *",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        Text(
                                          "Update your company logo and then choose\nwhere you want it to display.",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "Assets/images/green_logo.png",
                                                width: 140),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: AppColors
                                                            .borderColor)),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    10),
                                                            color: AppColors
                                                                .white_00,
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .borderColor)),
                                                        padding:
                                                            EdgeInsets.all(11),
                                                        child: Image.asset(
                                                            "Assets/icons/ic_upload.png",
                                                            width: 25,
                                                            height: 25)),
                                                    SizedBox(height: 6),
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'Click to upload ',
                                                            style: textStyle
                                                                    .SegoeUISemiBold
                                                                .copyWith(
                                                                    fontSize:
                                                                        14.px,
                                                                    color: AppColors
                                                                        .mainGreen),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'or drag and drop',
                                                            style: textStyle
                                                                    .SegoeUI
                                                                .copyWith(
                                                                    fontSize:
                                                                        14.px,
                                                                    color: AppColors
                                                                        .fontGrey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 12.px,
                                                              color: AppColors
                                                                  .fontBlack),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Text(
                                          "Branding",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        Text(
                                          "Add your logo to reports and emails.",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "View Examples",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.mainGreen),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Image.asset(
                                                "Assets/icons/ic_checkbox_fill.png",
                                                width: 16,
                                                height: 16,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Reports",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontLightBlack),
                                                ),
                                                Text(
                                                  "Include my logo in summary reports.",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontLightBlack),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Image.asset(
                                                "Assets/icons/ic_checkbox_fill.png",
                                                width: 16,
                                                height: 16,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Emails",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontLightBlack),
                                                ),
                                                Text(
                                                  "Include my logo in summary emails.",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontLightBlack),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Text(
                                          "Social profiles",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(0.4)),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: Center(
                                                  child: Text(
                                                    "twitter.com/",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontGrey),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: VerticalDivider(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: titleController,
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          color: AppColors
                                                              .fontBlack,
                                                          fontSize: 14.px),
                                                  cursorHeight: 15,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    fillColor:
                                                        AppColors.white_00,
                                                    filled: true,
                                                    hintText: "",
                                                    hintStyle: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontGrey,
                                                            fontSize: 14.px),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(0.4)),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: Center(
                                                  child: Text(
                                                    "facebook.com/",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontGrey),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: VerticalDivider(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: titleController,
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          color: AppColors
                                                              .fontBlack,
                                                          fontSize: 14.px),
                                                  cursorHeight: 15,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    fillColor:
                                                        AppColors.white_00,
                                                    filled: true,
                                                    hintText: "",
                                                    hintStyle: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontGrey,
                                                            fontSize: 14.px),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(0.4)),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: Center(
                                                  child: Text(
                                                    "linkedin.com/company/",
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontGrey),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              SizedBox(
                                                height: 36,
                                                child: VerticalDivider(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.4)),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: titleController,
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          color: AppColors
                                                              .fontBlack,
                                                          fontSize: 14.px),
                                                  cursorHeight: 15,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    fillColor:
                                                        AppColors.white_00,
                                                    filled: true,
                                                    hintText: "",
                                                    hintStyle: textStyle.SegoeUI
                                                        .copyWith(
                                                            color: AppColors
                                                                .fontGrey,
                                                            fontSize: 14.px),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(child: SizedBox()),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 38,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: AppColors.white_00,
                                                    border: Border.all(
                                                        color: AppColors
                                                            .darkBorderColor
                                                            .withOpacity(0.3))),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                child: Center(
                                                  child: Text(
                                                    "Cancel",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .selectIconColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 38,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: AppColors.mainGreen),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: Center(
                                                  child: Text(
                                                    "Save changes",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .white_00),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.borderColor,
                          height: 40,
                        ),
                        width > 1000
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Torque Setting",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          color: AppColors.white_00),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Flare Nut Diameter (mm)",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 500,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(.4)),
                                                color: AppColors.white_00),
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "1/4\" (6.35) "
                                                  "\n3/8\" (9.52) "
                                                  "\n1/2\" (12.70) "
                                                  "\n1/2\" (12.70) "
                                                  "\n1/2\" (12.70)",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontGrey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            "Tightening Torque [Ft•Lbs(N°m)]",
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 500,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                    color: AppColors.fontGrey
                                                        .withOpacity(.4)),
                                                color: AppColors.white_00),
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "11.8 to 13.3 (16 to 18)"
                                                  "\n23.6 to 31.0 (32 to 42)"
                                                  "\n36.1 to 45.0 (49 to 61)"
                                                  "\n46.5 to 55.3 (63 to 75)"
                                                  "\n66.4 to 81.1 (90 to 110)",
                                                  style: textStyle.SegoeUI
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontGrey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: AppColors.borderColor,
                                            height: 40,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(child: SizedBox()),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 38,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: AppColors.white_00,
                                                      border: Border.all(
                                                          color: AppColors
                                                              .darkBorderColor
                                                              .withOpacity(
                                                                  0.3))),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15),
                                                  child: Center(
                                                    child: Text(
                                                      "Cancel",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .selectIconColor),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 15),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 38,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color:
                                                          AppColors.mainGreen),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  child: Center(
                                                    child: Text(
                                                      "Save changes",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .white_00),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Torque Setting",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  SizedBox(height: 1.h),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Flare Nut Diameter (mm)",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 500,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(.4)),
                                              color: AppColors.white_00),
                                          padding: EdgeInsets.all(15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "1/4\" (6.35) "
                                                "\n3/8\" (9.52) "
                                                "\n1/2\" (12.70) "
                                                "\n1/2\" (12.70) "
                                                "\n1/2\" (12.70)",
                                                style:
                                                    textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color:
                                                            AppColors.fontGrey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Tightening Torque [Ft•Lbs(N°m)]",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 500,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: AppColors.fontGrey
                                                      .withOpacity(.4)),
                                              color: AppColors.white_00),
                                          padding: EdgeInsets.all(15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "11.8 to 13.3 (16 to 18)"
                                                "\n23.6 to 31.0 (32 to 42)"
                                                "\n36.1 to 45.0 (49 to 61)"
                                                "\n46.5 to 55.3 (63 to 75)"
                                                "\n66.4 to 81.1 (90 to 110)",
                                                style:
                                                    textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color:
                                                            AppColors.fontGrey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                          color: AppColors.borderColor,
                                          height: 40,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(child: SizedBox()),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 38,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: AppColors.white_00,
                                                    border: Border.all(
                                                        color: AppColors
                                                            .darkBorderColor
                                                            .withOpacity(0.3))),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                child: Center(
                                                  child: Text(
                                                    "Cancel",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .selectIconColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 38,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: AppColors.mainGreen),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: Center(
                                                  child: Text(
                                                    "Save changes",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .white_00),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.borderColor,
                          height: 40,
                        ),
                        width > 1000
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Miscellaneous",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: 500,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          color: AppColors.white_00),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              FlutterSwitch(
                                                  height: 23.0,
                                                  width: 43.0,
                                                  padding: 2.0,
                                                  toggleSize: 20.0,
                                                  borderRadius: 30.0,
                                                  activeColor:
                                                      AppColors.mainGreen,
                                                  value: hideJSeries,
                                                  onToggle: (value) {
                                                    setState(() {
                                                      hideJSeries = value;
                                                    });
                                                  }),
                                              SizedBox(width: 10),
                                              Text(
                                                "Hide J Series System Builder",
                                                style:
                                                    textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color:
                                                            AppColors.fontGrey),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              FlutterSwitch(
                                                  height: 23.0,
                                                  width: 43.0,
                                                  padding: 2.0,
                                                  toggleSize: 20.0,
                                                  borderRadius: 30.0,
                                                  activeColor:
                                                      AppColors.mainGreen,
                                                  value: disablePush,
                                                  onToggle: (value) {
                                                    setState(() {
                                                      disablePush = value;
                                                    });
                                                  }),
                                              SizedBox(width: 10),
                                              Text(
                                                "Disable push notifications",
                                                style:
                                                    textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color:
                                                            AppColors.fontGrey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Miscellaneous",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  SizedBox(height: 1.h),
                                  Container(
                                    width: 500,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            FlutterSwitch(
                                                height: 23.0,
                                                width: 43.0,
                                                padding: 2.0,
                                                toggleSize: 20.0,
                                                borderRadius: 30.0,
                                                activeColor:
                                                    AppColors.mainGreen,
                                                value: hideJSeries,
                                                onToggle: (value) {
                                                  setState(() {
                                                    hideJSeries = value;
                                                  });
                                                }),
                                            SizedBox(width: 10),
                                            Text(
                                              "Hide J Series System Builder",
                                              style: textStyle.SegoeUI.copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontGrey),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            FlutterSwitch(
                                                height: 23.0,
                                                width: 43.0,
                                                padding: 2.0,
                                                toggleSize: 20.0,
                                                borderRadius: 30.0,
                                                activeColor:
                                                    AppColors.mainGreen,
                                                value: disablePush,
                                                onToggle: (value) {
                                                  setState(() {
                                                    disablePush = value;
                                                  });
                                                }),
                                            SizedBox(width: 10),
                                            Text(
                                              "Disable push notifications",
                                              style: textStyle.SegoeUI.copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontGrey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.borderColor,
                          height: 40,
                        ),
                        width > 1000
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Account",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: 500,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          color: AppColors.white_00),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              deleteDialog();
                                            },
                                            child: Container(
                                              height: 38,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color:
                                                      AppColors.backgroundRed),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Center(
                                                child: Text(
                                                  "Delete account permanently",
                                                  style:
                                                      textStyle.SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .white_00),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Account",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  SizedBox(height: 1.h),
                                  Container(
                                    width: 500,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            deleteDialog();
                                          },
                                          child: Container(
                                            height: 38,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: AppColors.backgroundRed),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Center(
                                              child: Text(
                                                "Delete account permanently",
                                                style: textStyle.SegoeUISemiBold
                                                    .copyWith(
                                                        fontSize: 14.px,
                                                        color:
                                                            AppColors.white_00),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Registration Form",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Quickly fill out the product registration form\nwith your photo and details.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to product registration",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "Warranty Lookup",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Quickly check your warranty status online.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to Warranty Lookup",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "Rebate Finder",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Discover the best rebate opportunities\neffortlessly.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to Online Rebate Finder",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "View It",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Check out your portfolio and bio.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Download file",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Link to ViewIt App",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "Residential Financing (US only)",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Explore options for residential financing to\nsecure your dream home.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to Financing",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "Commercial Financing (US only)",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Revise your portfolio and biography to\nreflect your expertise in commercial\nfinancing.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to Commercial Financing",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "H-Series Catalog",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Explore the H-Series catalog for cutting-edge\ntechnology and innovative designs.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Link to online catalogs",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "J-Series Catalog",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "Explore the J-series catalog for the latest\ntrends and innovations in design.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Learn More",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: AppColors.borderColor,
                                height: 40,
                              ),
                              Text(
                                "Visit our website",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                              Text(
                                "To learn more about us, click on the below and explore our website.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    "Open Fujitsu Website",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  SizedBox(width: 6),
                                  Image.asset(
                                    "Assets/icons/ic_arrow.png",
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ],
      ),
    );
  }

  deleteDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.white_00,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Image.asset("Assets/icons/ic_delete_big.png",
                            width: 40),
                        Spacer(),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close,
                                color: AppColors.fontLightBlack))
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Delete account",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 18.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "Are you sure you want to delete your account?\nThis action cannot be undone.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.white_00,
                                  border: Border.all(
                                      color: AppColors.darkBorderColor
                                          .withOpacity(0.3))),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.selectIconColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0.5.w),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.backgroundRed),
                              child: Center(
                                child: Text(
                                  "Delete",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.white_00),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }).whenComplete(() {});
  }
}
