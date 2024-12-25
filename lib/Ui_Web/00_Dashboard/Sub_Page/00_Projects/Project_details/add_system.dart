import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Values/AppColors.dart';
import '../../../../../Values/Constants.dart';

class AddSystem extends StatefulWidget {
  const AddSystem({super.key});

  @override
  State<AddSystem> createState() => _AddSystemState();
}

class _AddSystemState extends State<AddSystem> {

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Add Systems",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 20.px,
                        color: AppColors.fontBlack
                    ),
                  ),

                  Text(
                    "Follow this guide to incorporate the essential systems into your project.",
                    style: textStyle.SegoeUI.copyWith(
                        fontSize: 14.px,
                        color: AppColors.fontBlack
                    ),
                  ),

                ],
              ),
            ),

            InkWell(
              onTap: () {

                Scaffold.of(context).openEndDrawer();

              },
              child: Image.asset(
                  "Assets/icons/ic_filter.png", width: 38, height: 38
              ),
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

          ],
        ),

        SizedBox(height: 30),

        Expanded(
          child: Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: Theme(
              data: Theme.of(context).copyWith(
                  scrollbarTheme: ScrollbarThemeData(
                    thumbColor: WidgetStateProperty.all(Colors.transparent),
                  )),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "QuantumDrive 3000",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "12000 BTU Wall Mount"
                                          "\nR-32 Heat Pump"
                                          "\nBuilt-in Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {


                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {

                                        viewProduct();

                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "NovaSphere 500",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "19000 BTU Overhead Air Distribution Unit"
                                          "\nR-290 Innovative Heat Transfer System"
                                          "\nAdvanced Air Purification Technology",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {

                                        viewProduct();

                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "HyperFusion 7",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "20000 BTU Ceiling-Mounted Air Installation"
                                          "\nR-410A Smart Climate Management"
                                          "\nNext-Gen Air Quality Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_5.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "EcoWave 100",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "21000 BTU Ceiling-Mounted Air Solution\nR-32 Versatile Heating and Cooling Technology\nCutting-Edge Air Purification System",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_6.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 40),

                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "QuantumDrive 3000",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "12000 BTU Wall Mount"
                                          "\nR-32 Heat Pump"
                                          "\nBuilt-in Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "NovaSphere 500",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "19000 BTU Overhead Air Distribution Unit"
                                          "\nR-290 Innovative Heat Transfer System"
                                          "\nAdvanced Air Purification Technology",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "HyperFusion 7",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "20000 BTU Ceiling-Mounted Air Installation"
                                          "\nR-410A Smart Climate Management"
                                          "\nNext-Gen Air Quality Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_5.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: Stack(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen
                                      ),
                                    ),

                                    Text(
                                      "EcoWave 100",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "21000 BTU Ceiling-Mounted Air Solution\nR-32 Versatile Heating and Cooling Technology\nCutting-Edge Air Purification System",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    InkWell(
                                      onTap: () {



                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontLightBlack
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_6.png"
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(width: 40),

                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        )

      ],
    );
  }

  viewProduct() {

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
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
                      child: Theme(
                        data: Theme.of(context).copyWith(
                            scrollbarTheme: ScrollbarThemeData(
                              thumbColor: WidgetStateProperty.all(Colors.transparent),
                            )
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              Image.asset(
                                  "Assets/images/image_4.png"
                              ),

                              SizedBox(height: 20),

                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "ASUH09KMAS",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 20.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){

                                      Navigator.pop(context);

                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.close,color: AppColors.fontLightBlack,size: 20,),
                                    ),
                                  )

                                ],
                              ),

                              Text(
                                "System 09LEAS1"
                                    "\nIndoor Model ASUHO9LMAS"
                                    "\nOutdoor Model AOUHO9LEAS1",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack
                                ),
                              ),

                              SizedBox(height: 15),

                              Text(
                                "Performance",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.mainGreen
                                ),
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "SEER",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "21.30",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "SEER2",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "21.30",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "EER",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "12.50",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "EER2",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "12.50",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              Divider(
                                color: AppColors.borderColor,
                                height: 30,
                              ),

                              Text(
                                "Dimensions & Weights",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.mainGreen
                                ),
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Indoor Unit Length (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "10-5/8",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Indoor Unit Width (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "32-13/16",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Indoor Unit Height (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "8-3/4",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Outdoor Unit Length (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "14-5/16",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Outdoor Unit Width (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "19-11/16",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Outdoor Unit Height (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "19-5/16",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              Divider(
                                color: AppColors.borderColor,
                                height: 30,
                              ),

                              Text(
                                "Lineset Specs",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.mainGreen
                                ),
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Min Pipe Length (ft)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "25",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Liquid Lineset Size (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "1/4",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Gas Lineset Size (in)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "3/8",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Precharge Length",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "25",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Max Height Difference (ft)",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "10",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Lineset Connection Method Liquid",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "Flare",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Lineset Connection Method Gas",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "Flare",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(height: 2),

                              Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      "Additional Refrigerant oz/ft",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontLightBlack
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "N/A",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                              Divider(
                                color: AppColors.borderColor,
                                height: 30,
                              ),

                              Row(
                                children: [

                                  Expanded(
                                    child: InkWell(
                                      onTap: () {


                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppColors.neonBorder)
                                        ),
                                        child: Row(
                                          children: [

                                            SizedBox(width: 5),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Add to Zone",
                                                  style: textStyle.SegoeUISemiBold.copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors.mainGreen
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: AppColors.mainGreen,
                                                size: 20,
                                              ),
                                            ),

                                            SizedBox(width: 5),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  InkWell(
                                    onTap: () {



                                    },
                                    child: Container(
                                      height: 36,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          border: Border.all(color: AppColors.borderColor)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          "Cancel",
                                          style: textStyle.SegoeUISemiBold.copyWith(
                                              fontSize: 14.px,
                                              color: AppColors.fontLightBlack
                                          ),
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
                    ),
                  ),
                );
              }
          );
        }).whenComplete(() {
      setState(() {

      });
    });
  }

}
