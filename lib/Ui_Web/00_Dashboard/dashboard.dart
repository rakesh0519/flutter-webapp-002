import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_Web/00_Dashboard/Sub_Page/00_Projects/project_details.dart';
import 'package:fujitsuweb/Ui_Web/00_Dashboard/Sub_Page/00_Projects/projects_screen.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:sizer/sizer.dart';

import '../../Providers/ui_providers.dart';
import '../../Values/Constants.dart';
import 'Sub_Page/01_Products/products_screen.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  UiProvider uiProvider = UiProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    uiProvider = Provider.of<UiProvider>(context, listen: false);

  }

  @override
  Widget build(BuildContext context) {

    uiProvider = Provider.of<UiProvider>(context, listen: true);

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

                        uiProvider.changeDashboardPage("Projects");

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.dashboardPage == "Projects" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: uiProvider.dashboardPage == "Projects" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                              "Assets/icons/ic_projects.png", width: 20, height: 20,
                            color:uiProvider.dashboardPage == "Projects" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    SizedBox(height: 1.h),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        uiProvider.changeDashboardPage("Products");

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.dashboardPage == "Products" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: uiProvider.dashboardPage == "Products" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_products.png", width: 20, height: 20,
                            color: uiProvider.dashboardPage == "Products" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    Expanded(child: SizedBox()),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        uiProvider.changeDashboardPage("wheel");

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.dashboardPage == "wheel" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: uiProvider.dashboardPage == "wheel" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_wheel.png", width: 20, height: 20,
                            color: uiProvider.dashboardPage == "wheel" ? AppColors.selectIconColor : AppColors.unselectIconColor,
                          )),
                    ),

                    SizedBox(height: 1.h),

                    InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        uiProvider.changeDashboardPage("Setting");

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: uiProvider.dashboardPage == "Setting" ? AppColors.selectColor : AppColors.white_00,
                              border: Border.all(color: uiProvider.dashboardPage == "Setting" ? AppColors.selectColor : AppColors.white_00,)
                          ),
                          padding: EdgeInsets.all(9),
                          child: Image.asset(
                            "Assets/icons/ic_setting.png", width: 20, height: 20,
                            color: uiProvider.dashboardPage == "Setting" ? AppColors.selectIconColor : AppColors.unselectIconColor,
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

                              uiProvider.dashboardPage == "Projects"
                                  ?
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightBg,
                                  borderRadius: BorderRadius.circular(3)
                                ),
                                padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 5),
                                child: Text(
                                  "Projects",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.selectIconColor
                                  ),
                                ),
                              )
                                  :
                              uiProvider.dashboardPage == "Projects_Details"
                                  ?
                              Row(
                                children: [

                                  InkWell(
                                    hoverColor: AppColors.white_00,
                                    onTap: () {

                                      uiProvider.changeDashboardPage("Projects");

                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 5),
                                      child: Text(
                                        "Projects",
                                        style: textStyle.SegoeUISemiBold.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.selectIconColor
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 0.7.w),

                                  Icon(Icons.keyboard_arrow_right_rounded,color: AppColors.fontGrey.withOpacity(0.3)),

                                  SizedBox(width: 0.7.w),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.lightBg,
                                        borderRadius: BorderRadius.circular(3)
                                    ),
                                    padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 5),
                                    child: Text(
                                      "Project Name",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.selectIconColor
                                      ),
                                    ),
                                  ),
                                ],
                              )
                                  :
                              uiProvider.dashboardPage == "Products"
                                  ?
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.lightBg,
                                    borderRadius: BorderRadius.circular(3)
                                ),
                                padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 5),
                                child: Text(
                                  "Products",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.selectIconColor
                                  ),
                                ),
                              ) :
                                  SizedBox()

                            ],
                          ),

                          SizedBox(height: 2.h),

                          Expanded(
                              child:
                              uiProvider.dashboardPage == "Projects"
                                  ?
                              Projects()
                                  :
                              uiProvider.dashboardPage == "Projects_Details"
                                  ?
                              ProjectDetails()
                                  :
                              uiProvider.dashboardPage == "Products"
                                  ?
                              Products()
                                  :
                              SizedBox()
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
