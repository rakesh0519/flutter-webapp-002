import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../Providers/ui_providers.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List projects = [
    {
      "name": "Riverside Park",
      "company": "Summit Structures LLC",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Maplewood Development",
      "company": "Skyline Builders Inc.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Pine Valley Project",
      "company": "Blue Horizon Contractors",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Birchwood Heights",
      "company": "Ironclad Construction Services",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "(123) 456-7890",
      "address": "456 Maple Street, Springfield, IL"
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
    uiProvider = Provider.of<UiProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;
    print(width);

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
                      "Projects",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 20.px, color: AppColors.fontBlack),
                    ),
                    Text(
                      "Oversee the projects your team is managing and adjust their permissions.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                  ],
                ),
              ),
              Image.asset("Assets/icons/ic_filter.png", width: 38, height: 38),
              SizedBox(width: 0.6.w),
              InkWell(
                  onTap: () {
                    projectDialog();
                  },
                  child: Image.asset("Assets/icons/ic_add.png",
                      width: 38, height: 38)),
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: AppColors.darkBorderColor.withOpacity(0.3))),
                height: 40,
                child: Row(
                  children: [
                    InkWell(
                      splashColor: AppColors.white_00,
                      hoverColor: AppColors.white_00,
                      onTap: () {
                        setState(() {
                          isGridView = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "Assets/icons/ic_grid.png",
                          width: 20,
                          height: 20,
                          color: isGridView == true
                              ? AppColors.mainGreen
                              : AppColors.selectIconColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 2,
                      child: VerticalDivider(
                        color: AppColors.darkBorderColor.withOpacity(0.3),
                      ),
                    ),
                    InkWell(
                      splashColor: AppColors.white_00,
                      hoverColor: AppColors.white_00,
                      onTap: () {
                        setState(() {
                          isGridView = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "Assets/icons/ic_list.png",
                          width: 20,
                          height: 20,
                          color: isGridView == false
                              ? AppColors.mainGreen
                              : AppColors.selectIconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: width < 900 ? true : false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Projects",
                style: textStyle.SegoeUISemiBold.copyWith(
                    fontSize: 20.px, color: AppColors.fontBlack),
              ),
              Text(
                "Oversee the projects your team is managing and adjust their permissions.",
                style: textStyle.SegoeUI.copyWith(
                    fontSize: 14.px, color: AppColors.fontBlack),
              ),
              SizedBox(height: 1.h),
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
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: AppColors.darkBorderColor.withOpacity(0.3))),
                    height: 40,
                    child: Row(
                      children: [
                        InkWell(
                          splashColor: AppColors.white_00,
                          hoverColor: AppColors.white_00,
                          onTap: () {
                            setState(() {
                              isGridView = true;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "Assets/icons/ic_grid.png",
                              width: 20,
                              height: 20,
                              color: isGridView == true
                                  ? AppColors.mainGreen
                                  : AppColors.selectIconColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 2,
                          child: VerticalDivider(
                            color: AppColors.darkBorderColor.withOpacity(0.3),
                          ),
                        ),
                        InkWell(
                          splashColor: AppColors.white_00,
                          hoverColor: AppColors.white_00,
                          onTap: () {
                            setState(() {
                              isGridView = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "Assets/icons/ic_list.png",
                              width: 20,
                              height: 20,
                              color: isGridView == false
                                  ? AppColors.mainGreen
                                  : AppColors.selectIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 3.h),
        projects.isNotEmpty
            ? isGridView == true
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
                            onEnter: (_) =>
                                setState(() => _hovering[index] = true),
                            onExit: (_) =>
                                setState(() => _hovering[index] = false),
                            child: InkWell(
                              hoverColor: AppColors.white_00,
                              onTap: () {
                                uiProvider
                                    .changeDashboardPage("Projects_Details");
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
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: AppColors.white_00,
                                                border: Border.all(
                                                    color:
                                                        AppColors.borderColor)),
                                            padding: EdgeInsets.all(8),
                                            child: SizedBox(
                                              height: 25,
                                              width: 25,
                                            )),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                projects[index]["name"],
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: textStyle.SegoeUISemiBold
                                                    .copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors
                                                            .fontBlack),
                                              ),
                                              Text(
                                                projects[index]["company"],
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors
                                                            .fontLightBlack),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      projects[index]["details"],
                                      maxLines: 3,
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2),
                                          child: Image.asset(
                                              "Assets/icons/ic_message.png",
                                              width: 20),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          projects[index]["number"],
                                          maxLines: 1,
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontGrey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2),
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
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors.fontGrey),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              uiProvider.changeDashboardPage(
                                                  "Projects_Details");
                                            },
                                            child: Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: AppColors.white_00,
                                                  border: Border.all(
                                                      color: AppColors
                                                          .darkBorderColor
                                                          .withOpacity(0.3))),
                                              padding:
                                                  EdgeInsets.only(bottom: 2),
                                              child: Center(
                                                child: Text(
                                                  "View Details",
                                                  style: textStyle
                                                          .SegoeUISemiBold
                                                      .copyWith(
                                                          fontSize: 14.px,
                                                          color: AppColors
                                                              .fontLightBlack),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        InkWell(
                                          onTap: () {
                                            shareDialog();
                                          },
                                          child: Container(
                                            height: 36,
                                            width: 36,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: AppColors.white_00,
                                                border: Border.all(
                                                    color: AppColors
                                                        .darkBorderColor
                                                        .withOpacity(0.3))),
                                            child: Center(
                                                child: Image.asset(
                                                    "Assets/icons/ic_share.png",
                                                    width: 20)),
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
                    child: Scrollbar(
                      controller: scrollController,
                      thumbVisibility: true,
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MouseRegion(
                              onEnter: (_) =>
                                  setState(() => _hovering[index] = true),
                              onExit: (_) =>
                                  setState(() => _hovering[index] = false),
                              child: InkWell(
                                onTap: () {
                                  uiProvider
                                      .changeDashboardPage("Projects_Details");
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
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.white_00),
                                  margin: EdgeInsets.only(right: 20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: width > 630
                                      ? Row(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: AppColors.white_00,
                                                    border: Border.all(
                                                        color: AppColors
                                                            .borderColor)),
                                                padding: EdgeInsets.all(8),
                                                child: SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                )),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    projects[index]["name"],
                                                    style: textStyle
                                                            .SegoeUISemiBold
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontBlack),
                                                  ),
                                                  Text(
                                                    projects[index]["company"],
                                                    style: textStyle.SegoeUI
                                                        .copyWith(
                                                            fontSize: 14.px,
                                                            color: AppColors
                                                                .fontLightBlack),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              "View Details",
                                              style: textStyle.SegoeUISemiBold
                                                  .copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors
                                                          .fontLightBlack),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              "Share",
                                              style: textStyle.SegoeUISemiBold
                                                  .copyWith(
                                                      fontSize: 14.px,
                                                      color:
                                                          AppColors.mainGreen),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color:
                                                            AppColors.white_00,
                                                        border: Border.all(
                                                            color: AppColors
                                                                .borderColor)),
                                                    padding: EdgeInsets.all(8),
                                                    child: SizedBox(
                                                      height: 25,
                                                      width: 25,
                                                    )),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      projects[index]["name"],
                                                      style: textStyle
                                                              .SegoeUISemiBold
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontBlack),
                                                    ),
                                                    Text(
                                                      projects[index]
                                                          ["company"],
                                                      style: textStyle.SegoeUI
                                                          .copyWith(
                                                              fontSize: 14.px,
                                                              color: AppColors
                                                                  .fontLightBlack),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "View Details",
                                                          style: textStyle
                                                                  .SegoeUISemiBold
                                                              .copyWith(
                                                                  fontSize:
                                                                      14.px,
                                                                  color: AppColors
                                                                      .fontLightBlack),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Text(
                                                          "Share",
                                                          style: textStyle
                                                                  .SegoeUISemiBold
                                                              .copyWith(
                                                                  fontSize:
                                                                      14.px,
                                                                  color: AppColors
                                                                      .mainGreen),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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
                      "No project found",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "You are yet to create your first project",
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
                              "New project",
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
        Divider(
          color: AppColors.borderColor,
        ),
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

  projectDialog() {
    TextEditingController projectNameController = TextEditingController();

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
                        Image.asset("Assets/icons/ic_folder.png", width: 40),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close,
                              color:
                                  AppColors.darkBorderColor.withOpacity(0.3)),
                        )
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Project created",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 16.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "Please enter a name for this project.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Project name",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.6.h),
                    TextFormField(
                        controller: projectNameController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "eg. New Skyline",
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
                    SizedBox(height: 2.h),
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
                                  "Confirm",
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

  shareDialog() {
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
                        Image.asset("Assets/icons/ic_add_people.png",
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
                      "Share with people",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 16.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "The following users have access to this project:",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Image.asset("Assets/images/avatar_1.png", width: 36),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Candice Wu",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontBlack),
                              ),
                              Text(
                                "candice@untitledui.com",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Remove",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.red_00),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("Assets/images/avatar_1.png", width: 36),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Demi Wilkinson",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontBlack),
                              ),
                              Text(
                                "demi@untitledui.com",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Remove",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.red_00),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("Assets/images/Avatar_2.png", width: 36),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Drew Cano",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontBlack),
                              ),
                              Text(
                                "drew@untitledui.com",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Remove",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.red_00),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Team member",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Image.asset("Assets/icons/ic_user.png", width: 20),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Select team member",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px, color: AppColors.fontBlack),
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded,
                              color: AppColors.fontLightBlack)
                        ],
                      ),
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
                                  "Done",
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
}
