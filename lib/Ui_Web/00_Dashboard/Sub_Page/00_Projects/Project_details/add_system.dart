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
}
