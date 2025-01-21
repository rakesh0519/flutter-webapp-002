// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List projects = [
    {
      "name": "Riverside Park",
      "company": "Summit Structures LLC",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Maplewood Development",
      "company": "Skyline Builders Inc.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Pine Valley Project",
      "company": "Blue Horizon Contractors",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Birchwood Heights",
      "company": "Ironclad Construction Services",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL",
      "projects": "57 Projects"
    },
  ];

  ScrollController scrollController = ScrollController();
  final List<bool> _hovering = List.generate(13, (_) => false);

  bool isGridView = true;

  UiProvider uiProvider = UiProvider();

  @override
  void initState() {
    super.initState();
    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  String selectedDays = "12";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    uiProvider = Provider.of<UiProvider>(context, listen: true);
    return Column(
      children: [
        Visibility(
          visible:
              width >= 1500 || width >= 1200 || width >= 900 ? true : false,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Users",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 20.px, color: AppColors.fontBlack),
                    ),
                    Text(
                      "Oversee the users of your system.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                  ],
                ),
              ),
              Image.asset("Assets/icons/ic_filter.png", width: 38, height: 38),
              SizedBox(width: 0.6.w),
              Image.asset("Assets/icons/ic_add.png", width: 38, height: 38),
              SizedBox(width: 0.6.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: AppColors.darkBorderColor.withOpacity(0.3))),
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "Assets/icons/ic_search.png",
                      width: 23,
                      height: 23,
                      color: AppColors.unselectIconColor,
                    ),
                    SizedBox(width: 0.6.w),
                    Text(
                      "Search",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 16.px, color: AppColors.unselectIconColor),
                    ),
                    SizedBox(width: 18.w),
                  ],
                ),
              ),
              SizedBox(width: 0.6.w),
            ],
          ),
        ),
        Visibility(
          visible: width < 900 ? true : false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Users",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 20.px, color: AppColors.fontBlack),
                  ),
                  Text(
                    "Oversee the users of your system.",
                    style: textStyle.SegoeUI.copyWith(
                        fontSize: 14.px, color: AppColors.fontBlack),
                  ),
                ],
              ),
              SizedBox(height: 2.0.h),
              Row(
                children: [
                  Image.asset("Assets/icons/ic_filter.png",
                      width: 38, height: 38),
                  SizedBox(width: 0.6.w),
                  Image.asset("Assets/icons/ic_add.png", width: 38, height: 38),
                  SizedBox(width: 0.6.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3))),
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "Assets/icons/ic_search.png",
                            width: 23,
                            height: 23,
                            color: AppColors.unselectIconColor,
                          ),
                          SizedBox(width: 0.6.w),
                          Text(
                            "Search",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 16.px,
                                color: AppColors.unselectIconColor),
                          ),
                          SizedBox(width: 18.w),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 0.6.w),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 3.h),
        projects.isNotEmpty
            ? Expanded(
                child: MasonryGridView.count(
                  shrinkWrap: true,
                  itemCount: projects.length,
                  crossAxisCount: _getGridCrossAxisCount(context),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MouseRegion(
                        onEnter: (_) => setState(() => _hovering[index] = true),
                        onExit: (_) => setState(() => _hovering[index] = false),
                        child: InkWell(
                          hoverColor: AppColors.white_00,
                          onTap: () {
                            uiProvider.changeAdminPage("Users_Details");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: _hovering[index]
                                        ? Colors.black.withOpacity(0.1)
                                        : AppColors.white_00,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                border: Border.all(
                                    color: _hovering[index]
                                        ? AppColors.mainGreen
                                        : AppColors.borderColor),
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.white_00),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: AppColors.white_00,
                                            border: Border.all(
                                                color: AppColors.borderColor)),
                                        padding: EdgeInsets.all(8),
                                        child: SizedBox(
                                          height: 25,
                                          width: 25,
                                        )),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        projects[index]["name"],
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontBlack),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Image.asset(
                                          "Assets/icons/ic_users_project.png",
                                          width: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        projects[index]["projects"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Image.asset(
                                          "Assets/icons/ic_message.png",
                                          width: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        projects[index]["number"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Image.asset(
                                          "Assets/icons/ic_address.png",
                                          width: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        projects[index]["address"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontGrey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: AppColors.white_00,
                                            border: Border.all(
                                                color: AppColors.darkBorderColor
                                                    .withOpacity(0.3))),
                                        // padding: EdgeInsets.all(10.0),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              "Assets/icons/ic_edit_new.png",
                                              width: _imagewidth(context),
                                            ),
                                            SizedBox(width: 8.0),
                                            Text(
                                              "Edit Details",
                                              style: textStyle.SegoeUISemiBold
                                                  .copyWith(
                                                      fontSize:
                                                          _textsize(context),
                                                      color: AppColors
                                                          .fontLightBlack),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 34,
                                      width: 34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.white_00,
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                              "Assets/icons/ic_share.png",
                                              width: _imagewidth(context))),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        deleteDialog();
                                      },
                                      child: Container(
                                        height: 34,
                                        width: 34,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.white_00,
                                        ),
                                        child: Center(
                                            child: Image.asset(
                                                "Assets/icons/ic_delete.png",
                                                width: _imagewidth(context))),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            : Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Image.asset(
                      "Assets/images/no_data.png",
                      width: 120,
                      height: 120,
                    )),
                    Text(
                      "No users found",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "You are yet to create your first user’s profile.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 13.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    InkWell(
                      onTap: () {
                        projectDialog();
                      },
                      child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.mainGreen,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("Assets/icons/ic_add.png",
                                width: 38, height: 38),
                            Text(
                              "New user",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px, color: AppColors.white_00),
                            ),
                            SizedBox(width: 1.w)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        Divider(color: AppColors.borderColor),
        SizedBox(height: 1.h),
        Row(
          children: [
            Expanded(child: SizedBox()),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedDays = "12";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      border: Border.all(
                          color: AppColors.darkBorderColor.withOpacity(0.3)),
                      color: selectedDays == "12"
                          ? AppColors.selectColor
                          : AppColors.white_00,
                    ),
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "12 Months",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedDays = "30";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          bottom: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          right: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3))),
                      color: selectedDays == "30"
                          ? AppColors.selectColor
                          : AppColors.white_00,
                    ),
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "30 Days",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedDays = "7";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          bottom: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          right: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3))),
                      color: selectedDays == "7"
                          ? AppColors.selectColor
                          : AppColors.white_00,
                    ),
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "7 Days",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedDays = "custom";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border(
                          top: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          bottom: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                          right: BorderSide(
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3))),
                      color: selectedDays == "custom"
                          ? AppColors.selectColor
                          : AppColors.white_00,
                    ),
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "Custom",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  deleteDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Container(
                width: 550,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.close,
                                  color: AppColors.darkBorderColor
                                      .withOpacity(0.3)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 1.5.h),
                      Text(
                        "Remove Client",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 16.px, color: AppColors.fontBlack),
                      ),
                      SizedBox(height: 0.4.h),
                      Text(
                        "Are you sure you want to delete this client? This action cannot be undone.",
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
                                    style: textStyle.SegoeUI.copyWith(
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
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.backgroundRed),
                                child: Center(
                                  child: Text(
                                    "Delete",
                                    style: textStyle.SegoeUI.copyWith(
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
          });
        }).whenComplete(() {
      setState(() {});
    });
  }

  projectDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
              width: 500,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("Assets/icons/ic_users_project.png",
                            width: 40),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add company",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 16.px, color: AppColors.fontBlack),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'Create company profile for free in less than 5 minutes.',
                              style: TextStyle(
                                color: AppColors.unselectIconColor,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.close,
                            color: AppColors.darkBorderColor.withOpacity(0.3))
                      ],
                    ),
                    Text(
                      'Name *',
                      style: TextStyle(color: AppColors.fontLightBlack),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
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
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextFormField(
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
                    SizedBox(height: 16.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone No *',
                                style:
                                    TextStyle(color: AppColors.fontLightBlack),
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
                                    hintText: "Enter contact Number",
                                    hintStyle: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontGrey,
                                        fontSize: 14.px),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.red_00
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email ID *',
                                style:
                                    TextStyle(color: AppColors.fontLightBlack),
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
                                    hintText: "Enter mail id",
                                    hintStyle: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontGrey,
                                        fontSize: 14.px),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.red_00
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company',
                                style:
                                    TextStyle(color: AppColors.fontLightBlack),
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
                                    hintText: "Search for company",
                                    prefixIcon: Icon(
                                      Icons.search_rounded,
                                      color: AppColors.unselectIconColor,
                                    ),
                                    hintStyle: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontGrey,
                                        fontSize: 14.px),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.red_00
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Website',
                                style:
                                    TextStyle(color: AppColors.fontLightBlack),
                              ),
                              SizedBox(height: 6.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border:
                                        Border.all(color: Color(0xffD5D7DA))),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Text(
                                          'https://',
                                          style: TextStyle(
                                              color: AppColors.fontGrey,
                                              fontSize: 14.px),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                        child: VerticalDivider(
                                          color: Color(0xffD5D7DA),
                                          width: 3,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                            style: textStyle.SegoeUI.copyWith(
                                                color: AppColors.fontBlack,
                                                fontSize: 14.px),
                                            cursorHeight: 15,
                                            decoration: InputDecoration(
                                                isDense: true,
                                                fillColor: AppColors.white_00,
                                                filled: true,
                                                hintText: "www.example.com",
                                                hintStyle:
                                                    textStyle.SegoeUI.copyWith(
                                                        color:
                                                            AppColors.fontGrey,
                                                        fontSize: 14.px),
                                                border: InputBorder.none)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location *',
                                style:
                                    TextStyle(color: AppColors.fontLightBlack),
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
                                    hintText: "Search for city",
                                    prefixIcon: Icon(
                                      Icons.search_rounded,
                                      color: AppColors.unselectIconColor,
                                    ),
                                    hintStyle: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontGrey,
                                        fontSize: 14.px),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.fontGrey
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.red_00
                                                .withOpacity(.4)),
                                        borderRadius: BorderRadius.circular(6)),
                                  )),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Full Address',
                      style: TextStyle(color: AppColors.fontLightBlack),
                    ),
                    SizedBox(height: 6.0),
                    TextFormField(
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        maxLines: 3,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter the full address",
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
                    SizedBox(height: 16.0),
                    Divider(color: AppColors.borderColor, height: 30),
                    SizedBox(height: 16.0),
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
                                  style: textStyle.SegoeUI.copyWith(
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
                                  color: AppColors.mainGreen),
                              child: Center(
                                child: Text(
                                  "Add company",
                                  style: textStyle.SegoeUI.copyWith(
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

  int _getGridCrossAxisCount(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width >= 1500) {
      return 5;
    } else if (width >= 1200) {
      return 4;
    } else if (width >= 900) {
      return 3;
    } else if (width >= 600) {
      return 2;
    } else {
      return 1;
    }
  }

  double _imagewidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width >= 1500) {
      return 20.0;
    } else if (width >= 1200) {
      return 16.0;
    } else if (width >= 900) {
      return 16.0;
    } else if (width >= 600) {
      return 14.0;
    } else {
      return 20.0;
    }
  }

  double _textsize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width >= 1500) {
      return 14.px;
    } else if (width >= 1200) {
      return 14.px;
    } else if (width >= 900) {
      return 14.px;
    } else if (width >= 600) {
      return 12.px;
    } else {
      return 14.px;
    }
  }
}
