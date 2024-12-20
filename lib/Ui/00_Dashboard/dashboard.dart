import 'package:flutter/material.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:sizer/sizer.dart';

import '../../Values/Constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  String selected = "projects";
  String selectedDays = "12";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_00,
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
                  border: Border.all(color: AppColors.borderColor,width: 1),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 2.h),

                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white_00,
                            border: Border.all(color: AppColors.borderColor)
                        ),
                        padding: EdgeInsets.all(9),
                        child: SizedBox(width: 20,height: 20)),

                    SizedBox(height: 2.h),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        setState(() {
                          selected = "projects";
                        });

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selected == "projects" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: selected == "projects" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                              "Assets/icons/ic_projects.png", width: 20, height: 20,
                            color: selected == "projects" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    SizedBox(height: 1.h),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        setState(() {
                          selected = "products";
                        });

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selected == "products" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: selected == "products" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_products.png", width: 20, height: 20,
                            color: selected == "products" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    Expanded(child: SizedBox()),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        setState(() {
                          selected = "wheel";
                        });

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selected == "wheel" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: selected == "wheel" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_wheel.png", width: 20, height: 20,
                            color: selected == "wheel" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    SizedBox(height: 1.h),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        setState(() {
                          selected = "setting";
                        });

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selected == "setting" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: selected == "setting" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_setting.png", width: 20, height: 20,
                            color: selected == "setting" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    SizedBox(height: 2.h),

                    Image.asset(
                      "Assets/images/ic_profile.png", width: 35, height: 35
                    ),

                    SizedBox(height: 2.h),

                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Stack(
                    children: [

                      Positioned(
                        right: 0,
                        left: 0,
                        child: Center(
                          child: SizedBox(
                              width: 650,
                              child: Image.asset("Assets/images/bg_design.png")
                          ),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            children: [

                              Image.asset("Assets/icons/ic_home.png",width: 20,height: 20),

                              SizedBox(width: 0.7.w),

                              Icon(Icons.keyboard_arrow_right_rounded,color: AppColors.fontGrey.withOpacity(0.3)),

                              SizedBox(width: 0.7.w),

                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightBg,
                                  borderRadius: BorderRadius.circular(3)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                child: Text(
                                  "Projects",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.selectIconColor
                                  ),
                                ),
                              )

                            ],
                          ),

                          SizedBox(height: 2.h),

                          Row(
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
                                          fontSize: 20.px,
                                          color: AppColors.fontBlack
                                      ),
                                    ),

                                    Text(
                                      "Oversee the projects your team is managing and adjust their permissions.",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontBlack
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Image.asset(
                                  "Assets/icons/ic_filter.png", width: 38, height: 38
                              ),

                              SizedBox(width: 0.6.w),

                              Image.asset(
                                  "Assets/icons/ic_add.png", width: 38, height: 38
                              ),

                              SizedBox(width: 0.6.w),

                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
                                ),
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [

                                    Image.asset(
                                        "Assets/icons/ic_search.png", width: 23, height: 23,color: AppColors.unselectIconColor,
                                    ),

                                    SizedBox(width: 0.6.w),

                                    Text(
                                      "Search",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 16.px,
                                          color: AppColors.unselectIconColor
                                      ),
                                    ),

                                    SizedBox(width:18.w),

                                  ],
                                ),
                              ),

                              SizedBox(width: 0.6.w),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
                                ),
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [

                                    Image.asset(
                                        "Assets/icons/ic_grid.png",
                                      width: 20, height: 20,
                                      color: AppColors.selectIconColor,
                                    ),

                                    SizedBox(
                                      height: 40,
                                      child: VerticalDivider(
                                        color: AppColors.darkBorderColor.withOpacity(0.3),
                                      ),
                                    ),

                                    Image.asset(
                                        "Assets/icons/ic_list.png",
                                        width: 20, height: 20,
                                      color: AppColors.selectIconColor,
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Center(child: Image.asset("Assets/images/no_data.png",width: 120,height: 120,)),

                                Text(
                                  "No project found",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),

                                SizedBox(height: 0.4.h),

                                Text(
                                  "You are yet to create your first project",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 13.px,
                                      color: AppColors.fontBlack
                                  ),
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

                                        Image.asset(
                                            "Assets/icons/ic_add.png", width: 38, height: 38
                                        ),

                                        Text(
                                          "New project",
                                          style: textStyle.SegoeUI.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.white_00
                                          ),
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
                                          border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                        color: selectedDays == "12" ? AppColors.selectColor : AppColors.white_00,
                                      ),
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          "12 Months",
                                          style: textStyle.SegoeUISemiBold.copyWith(
                                              fontSize: 12.px,
                                              color: AppColors.fontBlack
                                          ),
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
                                            top: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                            bottom: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                            right: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3))
                                        ),
                                        color: selectedDays == "30" ? AppColors.selectColor : AppColors.white_00,
                                      ),
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          "30 Days",
                                          style: textStyle.SegoeUISemiBold.copyWith(
                                              fontSize: 12.px,
                                              color: AppColors.fontBlack
                                          ),
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
                                              top: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                              bottom: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                              right: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3))
                                          ),
                                        color: selectedDays == "7" ? AppColors.selectColor : AppColors.white_00,
                                      ),
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          "7 Days",
                                          style: textStyle.SegoeUISemiBold.copyWith(
                                              fontSize: 12.px,
                                              color: AppColors.fontBlack
                                          ),
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
                                              top: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                              bottom: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3)),
                                              right: BorderSide(color: AppColors.darkBorderColor.withOpacity(0.3))
                                          ),
                                        color: selectedDays == "custom" ? AppColors.selectColor : AppColors.white_00,
                                      ),
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          "Custom",
                                          style: textStyle.SegoeUISemiBold.copyWith(
                                              fontSize: 12.px,
                                              color: AppColors.fontBlack
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              )

                            ],
                          )


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

  projectDialog() {

    TextEditingController projectNameController = TextEditingController();

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(12.0)), //this right here
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

                        Image.asset("Assets/icons/ic_folder.png",width: 40),
                        Spacer(),
                        Icon(Icons.close, color: AppColors.darkBorderColor.withOpacity(0.3))

                      ],
                    ),

                    SizedBox(height: 2.h),

                    Text(
                      "Project created",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 16.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.4.h),

                    Text(
                      "Please enter a name for this project.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      "Project name",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    TextFormField(
                        controller: projectNameController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack,
                            fontSize: 14.px
                        ),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "eg. New Skyline",
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
                                  border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
                              ),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.selectIconColor
                                  ),
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
                                  color: AppColors.mainGreen
                              ),
                              child: Center(
                                child: Text(
                                  "Confirm",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.white_00
                                  ),
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
        }).whenComplete(() {

    });
  }

}
