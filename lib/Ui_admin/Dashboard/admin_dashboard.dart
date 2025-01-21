import 'package:flutter/material.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Ui_Web/00_Dashboard/Sub_Page/00_Projects/Project_details/add_system.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/products/products_catalog.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/products/products_details/products_details.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/settings/admin_setting_screen.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/user_projects/user_projects_details.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/users/users_details.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/users/users_screen.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  UiProvider uiProvider = UiProvider();

  @override
  void initState() {
    super.initState();

    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    uiProvider = Provider.of<UiProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: AppColors.white_00,
      endDrawer: Drawer(
          backgroundColor: AppColors.white_00,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Filters",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 20.px, color: AppColors.selectIconColor),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: AppColors.fontGrey,
                          size: 20,
                        ))
                  ],
                ),
                Text(
                  "Apply filters to table data.",
                  style: textStyle.SegoeUI.copyWith(
                      fontSize: 14.px, color: AppColors.selectIconColor),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.borderColor)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Select saved filter",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px,
                              color: AppColors.selectIconColor),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.fontGrey,
                        size: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Sort by",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset("Assets/icons/ic_checkbox.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Type",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontLightBlack),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset("Assets/icons/ic_checkbox.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Newest First",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontLightBlack),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Type",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset("Assets/icons/ic_checkbox.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.neonBorder),
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.neonBack),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        "Single Zone",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.mainGreen),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset("Assets/icons/ic_checkbox.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderPink),
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.backPink),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        "Multi Zone",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.fontPink),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset("Assets/icons/ic_checkbox.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderPurple),
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.backPurple),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        "Single Zone",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.fontPurple),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "BTU",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Unit Type",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "SEER 2",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Lineset Length",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.fontLightBlack),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.fontGrey,
                      size: 15,
                    )
                  ],
                ),
                Spacer(),
                Divider(
                  color: AppColors.borderColor,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Save filter",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.mainGreen),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: AppColors.borderColor)),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px,
                                color: AppColors.fontLightBlack),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: AppColors.borderColor),
                            color: AppColors.mainGreen),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Text(
                            "Apply",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px, color: AppColors.white_00),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.h),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white_00,
                          border: Border.all(color: AppColors.borderColor)),
                      padding: EdgeInsets.all(9),
                      child: SizedBox(width: 20, height: 20),
                    ),
                    SizedBox(height: 2.h),
                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        uiProvider.changeAdminPage("Users");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.adminDashPage == "Projects"
                                  ? AppColors.selectColor
                                  : AppColors.white_00,
                              border: Border.all(
                                color: uiProvider.adminDashPage == "Projects"
                                    ? AppColors.selectColor
                                    : AppColors.white_00,
                              )),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_user_person.png",
                            width: 20,
                            height: 20,
                            color: uiProvider.adminDashPage == "Projects"
                                ? AppColors.selectIconColor
                                : AppColors.unselectIconColor,
                          )),
                    ),
                    SizedBox(height: 1.h),
                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        uiProvider.changeAdminPage("Products");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.adminDashPage == "Products"
                                  ? AppColors.selectColor
                                  : AppColors.white_00,
                              border: Border.all(
                                color: uiProvider.adminDashPage == "Products"
                                    ? AppColors.selectColor
                                    : AppColors.white_00,
                              )),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_products.png",
                            width: 20,
                            height: 20,
                            color: uiProvider.adminDashPage == "Products"
                                ? AppColors.selectIconColor
                                : AppColors.unselectIconColor,
                          )),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        //uiProvider.changeAdminPage("wheel");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.adminDashPage == "wheel"
                                  ? AppColors.selectColor
                                  : AppColors.white_00,
                              border: Border.all(
                                color: uiProvider.adminDashPage == "wheel"
                                    ? AppColors.selectColor
                                    : AppColors.white_00,
                              )),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_wheel.png",
                            width: 20,
                            height: 20,
                            color: uiProvider.adminDashPage == "wheel"
                                ? AppColors.selectIconColor
                                : AppColors.unselectIconColor,
                          )),
                    ),
                    SizedBox(height: 1.h),
                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        uiProvider.changeAdminPage("Setting");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.adminDashPage == "Setting"
                                  ? AppColors.selectColor
                                  : AppColors.white_00,
                              border: Border.all(
                                color: uiProvider.adminDashPage == "Setting"
                                    ? AppColors.selectColor
                                    : AppColors.white_00,
                              )),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_setting.png",
                            width: 20,
                            height: 20,
                            color: uiProvider.adminDashPage == "Setting"
                                ? AppColors.selectIconColor
                                : AppColors.unselectIconColor,
                          )),
                    ),
                    SizedBox(height: 2.h),
                    Image.asset("Assets/images/ic_profile.png",
                        width: 35, height: 35),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        left: 0,
                        child: Center(
                          child: SizedBox(
                              width: 650,
                              child:
                                  Image.asset("Assets/images/bg_design.png")),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    uiProvider.changeAdminPage("Users");
                                  },
                                  child: Image.asset("Assets/icons/ic_home.png",
                                      width: 20, height: 20)),
                              SizedBox(width: 0.7.w),
                              Icon(Icons.keyboard_arrow_right_rounded,
                                  color: AppColors.fontGrey.withOpacity(0.3)),
                              SizedBox(width: 0.7.w),
                              uiProvider.adminDashPage == "Users"
                                  ? Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.lightBg,
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 3,
                                          bottom: 5),
                                      child: Text(
                                        "Users",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color:
                                                    AppColors.selectIconColor),
                                      ),
                                    )
                                  : uiProvider.adminDashPage == "Users_Details"
                                      ? Row(
                                          children: [
                                            InkWell(
                                              hoverColor: AppColors.white_00,
                                              onTap: () {
                                                uiProvider
                                                    .changeAdminPage("Users");
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 3,
                                                    bottom: 5),
                                                child: Text(
                                                  "Users",
                                                  style: textStyle
                                                          .SegoeUISemiBold
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .selectIconColor),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 0.7.w),
                                            Icon(
                                                Icons
                                                    .keyboard_arrow_right_rounded,
                                                color: AppColors.fontGrey
                                                    .withOpacity(0.3)),
                                            SizedBox(width: 0.7.w),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.lightBg,
                                                  borderRadius:
                                                      BorderRadius.circular(3)),
                                              padding: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 3,
                                                  bottom: 5),
                                              child: Text(
                                                "Users Name",
                                                style: textStyle.SegoeUISemiBold
                                                    .copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors
                                                            .selectIconColor),
                                              ),
                                            ),
                                          ],
                                        )
                                      : uiProvider.adminDashPage ==
                                              "User_Projects_Details"
                                          ? Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 3,
                                                      bottom: 5),
                                                  child: Text(
                                                    "Users",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .selectIconColor),
                                                  ),
                                                ),
                                                Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: AppColors.fontGrey
                                                        .withOpacity(0.3)),
                                                SizedBox(width: 0.7.w),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: AppColors.lightBg,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 3,
                                                      bottom: 5),
                                                  child: Text(
                                                    "Project Name",
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .selectIconColor),
                                                  ),
                                                )
                                              ],
                                            )
                                          : uiProvider.adminDashPage ==
                                                  "Product_Details_page"
                                              ? Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 3,
                                                          bottom: 5),
                                                      child: Text(
                                                        "Product",
                                                        style: textStyle
                                                                .SegoeUISemiBold
                                                            .copyWith(
                                                                fontSize: 14.px,
                                                                color: AppColors
                                                                    .selectIconColor),
                                                      ),
                                                    ),
                                                    Icon(
                                                        Icons
                                                            .keyboard_arrow_right_rounded,
                                                        color: AppColors
                                                            .fontGrey
                                                            .withOpacity(0.3)),
                                                    SizedBox(width: 0.7.w),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              AppColors.lightBg,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3)),
                                                      padding: EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 3,
                                                          bottom: 5),
                                                      child: Text(
                                                        "Product Details page ",
                                                        style: textStyle
                                                                .SegoeUISemiBold
                                                            .copyWith(
                                                                fontSize: 14.px,
                                                                color: AppColors
                                                                    .selectIconColor),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              : uiProvider.adminDashPage ==
                                                      "Add_Systems"
                                                  ? Row(
                                                      children: [
                                                        InkWell(
                                                          hoverColor: AppColors
                                                              .white_00,
                                                          onTap: () {
                                                            uiProvider
                                                                .changeAdminPage(
                                                                    "Projects");
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10,
                                                                    right: 10,
                                                                    top: 3,
                                                                    bottom: 5),
                                                            child: Text(
                                                              "Projects",
                                                              style: textStyle
                                                                      .SegoeUISemiBold
                                                                  .copyWith(
                                                                      fontSize:
                                                                          14.px,
                                                                      color: AppColors
                                                                          .selectIconColor),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 0.7.w),
                                                        Icon(
                                                            Icons
                                                                .keyboard_arrow_right_rounded,
                                                            color: AppColors
                                                                .fontGrey
                                                                .withOpacity(
                                                                    0.3)),
                                                        SizedBox(width: 0.7.w),
                                                        InkWell(
                                                          hoverColor: AppColors
                                                              .white_00,
                                                          onTap: () {
                                                            uiProvider
                                                                .changeAdminPage(
                                                                    "Projects_Details");
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10,
                                                                    right: 10,
                                                                    top: 3,
                                                                    bottom: 5),
                                                            child: Text(
                                                              "Project Name",
                                                              style: textStyle
                                                                      .SegoeUISemiBold
                                                                  .copyWith(
                                                                      fontSize:
                                                                          14.px,
                                                                      color: AppColors
                                                                          .selectIconColor),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 0.7.w),
                                                        Icon(
                                                            Icons
                                                                .keyboard_arrow_right_rounded,
                                                            color: AppColors
                                                                .fontGrey
                                                                .withOpacity(
                                                                    0.3)),
                                                        SizedBox(width: 0.7.w),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .lightBg,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10,
                                                                  right: 10,
                                                                  top: 3,
                                                                  bottom: 5),
                                                          child: Text(
                                                            "Add Systems",
                                                            style: textStyle
                                                                    .SegoeUISemiBold
                                                                .copyWith(
                                                                    fontSize:
                                                                        14.px,
                                                                    color: AppColors
                                                                        .selectIconColor),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : uiProvider.adminDashPage ==
                                                          "Products"
                                                      ? Container(
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .lightBg,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10,
                                                                  right: 10,
                                                                  top: 3,
                                                                  bottom: 5),
                                                          child: Text(
                                                            "Products",
                                                            style: textStyle
                                                                    .SegoeUISemiBold
                                                                .copyWith(
                                                                    fontSize:
                                                                        14.px,
                                                                    color: AppColors
                                                                        .selectIconColor),
                                                          ),
                                                        )
                                                      : uiProvider.adminDashPage ==
                                                              "Setting"
                                                          ? Container(
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .lightBg,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3)),
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 10,
                                                                      right: 10,
                                                                      top: 3,
                                                                      bottom:
                                                                          5),
                                                              child: Text(
                                                                "Settings",
                                                                style: textStyle
                                                                        .SegoeUISemiBold
                                                                    .copyWith(
                                                                        fontSize: 14
                                                                            .px,
                                                                        color: AppColors
                                                                            .selectIconColor),
                                                              ),
                                                            )
                                                          : SizedBox()
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Expanded(
                            child: uiProvider.adminDashPage == "Users"
                                ? UsersScreen()
                                : uiProvider.adminDashPage == "Users_Details"
                                    ? UsersDetails()
                                    : uiProvider.adminDashPage ==
                                            "User_Projects_Details"
                                        ? UserProjectsDetails()
                                        : uiProvider.adminDashPage ==
                                                "Product_Details_page"
                                            ? ProductsDetailsScreen()
                                            : uiProvider.adminDashPage ==
                                                    "Products"
                                                ? ProductsCatalogScreen()
                                                : uiProvider.adminDashPage ==
                                                        "Add_Systems"
                                                    ? AddSystem()
                                                    : uiProvider.adminDashPage ==
                                                            "Setting"
                                                        ? AdminSettingScreen()
                                                        : SizedBox(),
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
      ),
    );
  }
}
