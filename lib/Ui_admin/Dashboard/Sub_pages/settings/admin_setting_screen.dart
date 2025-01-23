import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:sizer/sizer.dart';

class AdminSettingScreen extends StatefulWidget {
  const AdminSettingScreen({super.key});

  @override
  State<AdminSettingScreen> createState() => _AdminSettingScreenState();
}

class _AdminSettingScreenState extends State<AdminSettingScreen> {
  String selected = "Setting";

  TextEditingController tagController = TextEditingController(
      text:
          "Untitled UI is the ultimate Figma UI kit and design system. Kickstart any project and level up as a designer.");

  bool hideJSeries = false;
  bool disablePush = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;
    print(width);
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                "Logout",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px, color: AppColors.fontRed),
                              ),
                              SizedBox(width: 10),
                              Image.asset("Assets/icons/ic_logout.png",
                                  width: 20, height: 20),
                            ],
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
                                          "Personal info",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        Text(
                                          "Update your photo and personal details.",
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
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "First name *",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontLightBlack),
                                                    ),
                                                    SizedBox(height: 6.0),
                                                    TextFormField(
                                                        style: textStyle.SegoeUI
                                                            .copyWith(
                                                                color: AppColors
                                                                    .fontBlack,
                                                                fontSize:
                                                                    14.px),
                                                        cursorHeight: 15,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          fillColor: AppColors
                                                              .white_00,
                                                          filled: true,
                                                          hintText: "Olivia",
                                                          hintStyle: textStyle
                                                                  .SegoeUI
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .fontGrey,
                                                                  fontSize:
                                                                      14.px),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          focusedErrorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          errorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .red_00
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 24.0),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Last name *",
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontLightBlack),
                                                    ),
                                                    SizedBox(height: 6.0),
                                                    TextFormField(
                                                        style: textStyle.SegoeUI
                                                            .copyWith(
                                                                color: AppColors
                                                                    .fontBlack,
                                                                fontSize:
                                                                    14.px),
                                                        cursorHeight: 15,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          fillColor: AppColors
                                                              .white_00,
                                                          filled: true,
                                                          hintText: "Riya",
                                                          hintStyle: textStyle
                                                                  .SegoeUI
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .fontGrey,
                                                                  fontSize:
                                                                      14.px),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          focusedErrorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .fontGrey
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                          errorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: AppColors
                                                                      .red_00
                                                                      .withOpacity(
                                                                          .4)),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 24.0),
                                          Text(
                                            "Email address *",
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors
                                                        .fontLightBlack),
                                          ),
                                          SizedBox(height: 6.0),
                                          TextFormField(
                                              style: textStyle.SegoeUI.copyWith(
                                                  color: AppColors.fontBlack,
                                                  fontSize: 14.px),
                                              cursorHeight: 15,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                fillColor: AppColors.white_00,
                                                filled: true,
                                                hintText: "Olivia@gmail.com",
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
                                          SizedBox(height: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "Assets/images/ic_profile.png",
                                                width: 50,
                                                height: 50,
                                              ),
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Personal info",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                      ),
                                      Text(
                                        "Update your photo and personal details.",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.fontGrey),
                                      ),
                                    ],
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
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "First name *",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                  SizedBox(height: 6.0),
                                                  TextFormField(
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontBlack,
                                                              fontSize: 14.px),
                                                      cursorHeight: 15,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        fillColor:
                                                            AppColors.white_00,
                                                        filled: true,
                                                        hintText: "Olivia",
                                                        hintStyle: textStyle
                                                                .SegoeUI
                                                            .copyWith(
                                                                color: AppColors
                                                                    .fontGrey,
                                                                fontSize:
                                                                    14.px),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        focusedErrorBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        errorBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .red_00
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 24.0),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Last name *",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                  SizedBox(height: 6.0),
                                                  TextFormField(
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              color: AppColors
                                                                  .fontBlack,
                                                              fontSize: 14.px),
                                                      cursorHeight: 15,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        fillColor:
                                                            AppColors.white_00,
                                                        filled: true,
                                                        hintText: "Riya",
                                                        hintStyle: textStyle
                                                                .SegoeUI
                                                            .copyWith(
                                                                color: AppColors
                                                                    .fontGrey,
                                                                fontSize:
                                                                    14.px),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        focusedErrorBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .fontGrey
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        errorBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: AppColors
                                                                    .red_00
                                                                    .withOpacity(
                                                                        .4)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Text(
                                          "Email address *",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                        SizedBox(height: 6.0),
                                        TextFormField(
                                            style: textStyle.SegoeUI.copyWith(
                                                color: AppColors.fontBlack,
                                                fontSize: 14.px),
                                            cursorHeight: 15,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              fillColor: AppColors.white_00,
                                              filled: true,
                                              hintText: "Olivia@gmail.com",
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
                                        SizedBox(height: 20),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "Assets/images/ic_profile.png",
                                              width: 50,
                                              height: 50,
                                            ),
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
                                  SizedBox(height: 2.h),
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
                                  SizedBox(height: 2.h),
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
                              ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            width > 600
                                ? Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  )
                                : SizedBox.shrink(),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(12.0),
                                    child: width > 960
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: SizedBox(
                                                  child: Text(
                                                    'Product Registration Form',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .fontLightBlack),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .white_00,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xffD5D7DA),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0)),
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Choose the format for this resouce',
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .unselectIconColor),
                                                          ),
                                                          Spacer(),
                                                          Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_outlined,
                                                              color: AppColors
                                                                  .unselectIconColor)
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Container(
                                                      width: width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .white_00,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xffD5D7DA),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0)),
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Text(
                                                        'Quickly fill out the product registration form with your photo and details.',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .fontBlack),
                                                      ),
                                                    ),
                                                    SizedBox(height: 6.0),
                                                    Text(
                                                      '40 characters left',
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .unselectIconColor),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                              color: AppColors
                                                                  .borderColor)),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
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
                                                                height: 25),
                                                          ),
                                                          SizedBox(height: 6),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Spacer(),
                                                              Column(
                                                                children: [
                                                                  Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Click to upload ',
                                                                          style: textStyle.SegoeUISemiBold.copyWith(
                                                                              fontSize: 14.px,
                                                                              color: AppColors.mainGreen),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              'or drag and drop',
                                                                          style: textStyle.SegoeUI.copyWith(
                                                                              fontSize: 14.px,
                                                                              color: AppColors.fontGrey),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                                    style: textStyle.SegoeUI.copyWith(
                                                                        fontSize: 12
                                                                            .px,
                                                                        color: AppColors
                                                                            .fontBlack),
                                                                  ),
                                                                ],
                                                              ),
                                                              Spacer(),
                                                              Image.asset(
                                                                  "Assets/icons/ic_file.png",
                                                                  width: 40,
                                                                  height: 40),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Container(
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .white_00,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xffD5D7DA),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0)),
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Image.asset(
                                                                'Assets/icons/ic_pdf.png',
                                                                height: 40.0,
                                                                width: 40.0,
                                                              ),
                                                              SizedBox(
                                                                  width: 12.0),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Tech design requirements.pdf',
                                                                    style:
                                                                        TextStyle(
                                                                      color: AppColors
                                                                          .fontLightBlack,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '200 KB',
                                                                    style:
                                                                        TextStyle(
                                                                      color: AppColors
                                                                          .unselectIconColor,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Spacer(),
                                                              Image.asset(
                                                                'Assets/icons/ic_checkbox_fill.png',
                                                                height: 16.0,
                                                                width: 16.0,
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height: 8.0),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                width: 40.0,
                                                              ),
                                                              SizedBox(
                                                                  width: 12.0),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  height: 10,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: AppColors
                                                                        .mainGreen,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 12.0),
                                                              Text(
                                                                '100%',
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .unselectIconColor,
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                child: Text(
                                                  'Product Registration Form',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .fontLightBlack),
                                                ),
                                              ),
                                              SizedBox(height: 1.h),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffD5D7DA),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0)),
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Choose the format for this resouce',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .unselectIconColor),
                                                        ),
                                                        Spacer(),
                                                        Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: AppColors
                                                                .unselectIconColor)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                  Container(
                                                    width: width,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffD5D7DA),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0)),
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Text(
                                                      'Quickly fill out the product registration form with your photo and details.',
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .fontBlack),
                                                    ),
                                                  ),
                                                  SizedBox(height: 6.0),
                                                  Text(
                                                    '40 characters left',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .unselectIconColor),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                            color: AppColors
                                                                .borderColor)),
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                                              height: 25),
                                                        ),
                                                        SizedBox(height: 6),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Spacer(),
                                                            Column(
                                                              children: [
                                                                Text.rich(
                                                                  TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Click to upload ',
                                                                        style: textStyle.SegoeUISemiBold.copyWith(
                                                                            fontSize:
                                                                                14.px,
                                                                            color: AppColors.mainGreen),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            'or drag and drop',
                                                                        style: textStyle.SegoeUI.copyWith(
                                                                            fontSize:
                                                                                14.px,
                                                                            color: AppColors.fontGrey),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                                  style: textStyle
                                                                          .SegoeUI
                                                                      .copyWith(
                                                                          fontSize: 12
                                                                              .px,
                                                                          color:
                                                                              AppColors.fontBlack),
                                                                ),
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Image.asset(
                                                                "Assets/icons/ic_file.png",
                                                                width: 40,
                                                                height: 40),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                  Container(
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffD5D7DA),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0)),
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Image.asset(
                                                              'Assets/icons/ic_pdf.png',
                                                              height: 40.0,
                                                              width: 40.0,
                                                            ),
                                                            SizedBox(
                                                                width: 12.0),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Tech design requirements.pdf',
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .fontLightBlack,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '200 KB',
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .unselectIconColor,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Image.asset(
                                                              'Assets/icons/ic_checkbox_fill.png',
                                                              height: 16.0,
                                                              width: 16.0,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8.0),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              width: 40.0,
                                                            ),
                                                            SizedBox(
                                                                width: 12.0),
                                                            Expanded(
                                                              child: Container(
                                                                height: 10,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: AppColors
                                                                      .mainGreen,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                width: 12.0),
                                                            Text(
                                                              '100%',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .unselectIconColor,
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(height: 48.0),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        color: AppColors.white_00),
                                    padding: EdgeInsets.all(12.0),
                                    child: width > 960
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: SizedBox(
                                                  child: Text(
                                                    'Product Registration Form',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .fontLightBlack),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .white_00,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xffD5D7DA),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0)),
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Choose the format for this resouce',
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .unselectIconColor),
                                                          ),
                                                          Spacer(),
                                                          Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_outlined,
                                                              color: AppColors
                                                                  .unselectIconColor)
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Container(
                                                      width: width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .white_00,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xffD5D7DA),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0)),
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Text(
                                                        'Quickly fill out the product registration form with your photo and details.',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .fontBlack),
                                                      ),
                                                    ),
                                                    SizedBox(height: 6.0),
                                                    Text(
                                                      '40 characters left',
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .unselectIconColor),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Container(
                                                      width: width,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                              color: AppColors
                                                                  .borderColor)),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
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
                                                                height: 25),
                                                          ),
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
                                                                          fontSize: 14
                                                                              .px,
                                                                          color:
                                                                              AppColors.mainGreen),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      'or drag and drop',
                                                                  style: textStyle
                                                                          .SegoeUI
                                                                      .copyWith(
                                                                          fontSize: 14
                                                                              .px,
                                                                          color:
                                                                              AppColors.fontGrey),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                            style: textStyle
                                                                    .SegoeUI
                                                                .copyWith(
                                                                    fontSize:
                                                                        12.px,
                                                                    color: AppColors
                                                                        .fontBlack),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                child: Text(
                                                  'Product Registration Form',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .fontLightBlack),
                                                ),
                                              ),
                                              SizedBox(height: 2.h),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffD5D7DA),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0)),
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Choose the format for this resouce',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .unselectIconColor),
                                                        ),
                                                        Spacer(),
                                                        Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: AppColors
                                                                .unselectIconColor)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                  Container(
                                                    width: width,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffD5D7DA),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.0)),
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Text(
                                                      'Quickly fill out the product registration form with your photo and details.',
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .fontBlack),
                                                    ),
                                                  ),
                                                  SizedBox(height: 6.0),
                                                  Text(
                                                    '40 characters left',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .unselectIconColor),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                  Container(
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                            color: AppColors
                                                                .borderColor)),
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                                              height: 25),
                                                        ),
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
                                                                        fontSize: 14
                                                                            .px,
                                                                        color: AppColors
                                                                            .mainGreen),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'or drag and drop',
                                                                style: textStyle
                                                                        .SegoeUI
                                                                    .copyWith(
                                                                        fontSize: 14
                                                                            .px,
                                                                        color: AppColors
                                                                            .fontGrey),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Text(
                                                          "SVG, PNG, JPG or GIF (max. 800x400px)",
                                                          style: textStyle
                                                                  .SegoeUI
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.px,
                                                                  color: AppColors
                                                                      .fontBlack),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.0),
                                                ],
                                              ),
                                            ],
                                          ),
                                  ),
                                ],
                              ),
                            ),
                            width > 600 ? Spacer() : SizedBox.shrink(),
                          ],
                        ),
                        SizedBox(height: 48.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(children: <Widget>[
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 10.0, right: 20.0),
                                      child: Divider(
                                        color: AppColors.borderColor,
                                        height: 36,
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.mainGreen,
                                      border: Border.all(
                                          color: AppColors.borderColor),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Add Resource',
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.white_00),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0, right: 10.0),
                                      child: Divider(
                                        color: AppColors.borderColor,
                                        height: 36,
                                      )),
                                ),
                              ]),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                          ],
                        )
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
                borderRadius: BorderRadius.circular(12.0)), //this right here
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
