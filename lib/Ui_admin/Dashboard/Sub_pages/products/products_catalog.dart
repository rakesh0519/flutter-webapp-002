import 'package:flutter/material.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ProductsCatalogScreen extends StatefulWidget {
  const ProductsCatalogScreen({super.key});

  @override
  State<ProductsCatalogScreen> createState() => _ProductsCatalogScreenState();
}

class _ProductsCatalogScreenState extends State<ProductsCatalogScreen> {
  ScrollController scrollController = ScrollController();

  bool hovering = false;

  bool isGridView = true;
  UiProvider uiProvider = UiProvider();

  void initState() {
    super.initState();

    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    uiProvider = Provider.of<UiProvider>(context, listen: true);

    return Column(
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
                    "Product Catalog",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 20.px, color: AppColors.fontBlack),
                  ),
                  Text(
                    "Here’s a list of all our products available for your projects.",
                    style: textStyle.SegoeUI.copyWith(
                        fontSize: 14.px, color: AppColors.fontBlack),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Image.asset("Assets/icons/ic_filter.png",
                  width: 38, height: 38),
            ),
            SizedBox(width: 0.6.w),
            InkWell(
              onTap: () {
                addSpesCategoryDialog();
              },
              child:
                  Image.asset("Assets/icons/ic_add.png", width: 38, height: 38),
            ),
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
          ],
        ),
        SizedBox(height: 30),
        // isGridView == true
        //     ?
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
                          child: MouseRegion(
                            onEnter: (_) => setState(() => hovering = true),
                            onExit: (_) => setState(() => hovering = false),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: hovering == true
                                              ? AppColors.mainGreen
                                              : AppColors.borderColor),
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.white_00),
                                  margin: EdgeInsets.only(top: 70),
                                  padding: EdgeInsets.only(
                                      top: 60, left: 20, right: 20, bottom: 25),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "AIRSTAGE H-Series",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.darkGreen),
                                      ),
                                      Text(
                                        "QuantumDrive 3000",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 24.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "12000 BTU Wall Mount"
                                        "\nR-32 Heat Pump"
                                        "\nBuilt-in Filtration",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 12.px,
                                            color: AppColors.fontLightBlack),
                                      ),
                                      SizedBox(height: 20),

                                      /*
                                      InkWell(
                                        onTap: () {

                                          addToProjectDialog();

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
                                                    "Add to Project",
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
                            */
                                      // InkWell(
                                      //   onTap: () {
                                      //     viewProduct();
                                      //   },
                                      //   child: Container(
                                      //     width:
                                      //         MediaQuery.of(context).size.width,
                                      //     height: 36,
                                      //     decoration: BoxDecoration(
                                      //         borderRadius:
                                      //             BorderRadius.circular(6),
                                      //         border: Border.all(
                                      //             color: hovering == true
                                      //                 ? AppColors.mainGreen
                                      //                 : AppColors.borderColor)),
                                      //     child: Center(
                                      //       child: Text(
                                      //         "View Details",
                                      //         style: textStyle.SegoeUISemiBold
                                      //             .copyWith(
                                      //                 fontSize: 14.px,
                                      //                 color: AppColors
                                      //                     .fontLightBlack),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              uiProvider.changeAdminPage(
                                                  'Product_Details_page');
                                            },
                                            child: Image.asset(
                                                "Assets/icons/ic_edit.png",
                                                width: 38,
                                                height: 38),
                                          ),
                                          Image.asset(
                                              "Assets/icons/ic_copy.png",
                                              width: 20,
                                              height: 20),
                                          Image.asset(
                                              "Assets/icons/ic_eyeoff.png",
                                              width: 20,
                                              height: 20),
                                          InkWell(
                                            onTap: () {
                                              deleteDialog();
                                            },
                                            child: Image.asset(
                                                "Assets/icons/ic_delete.png",
                                                width: 20,
                                                height: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Center(
                                      child: Image.asset(
                                          "Assets/images/image_4.png")),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "NovaSphere 500",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "19000 BTU Overhead Air Distribution Unit"
                                      "\nR-290 Innovative Heat Transfer System"
                                      "\nAdvanced Air Purification Technology",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    // InkWell(
                                    //   onTap: () {
                                    //     viewProduct();
                                    //   },
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "HyperFusion 7",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "20000 BTU Ceiling-Mounted Air Installation"
                                      "\nR-410A Smart Climate Management"
                                      "\nNext-Gen Air Quality Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_5.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "EcoWave 100",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "21000 BTU Ceiling-Mounted Air Solution\nR-32 Versatile Heating and Cooling Technology\nCutting-Edge Air Purification System",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_6.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "QuantumDrive 3000",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "12000 BTU Wall Mount"
                                      "\nR-32 Heat Pump"
                                      "\nBuilt-in Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "NovaSphere 500",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "19000 BTU Overhead Air Distribution Unit"
                                      "\nR-290 Innovative Heat Transfer System"
                                      "\nAdvanced Air Purification Technology",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_4.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "HyperFusion 7",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "20000 BTU Ceiling-Mounted Air Installation"
                                      "\nR-410A Smart Climate Management"
                                      "\nNext-Gen Air Quality Filtration",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_5.png")),
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
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.white_00),
                                margin: EdgeInsets.only(top: 70),
                                padding: EdgeInsets.only(
                                    top: 60, left: 20, right: 20, bottom: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIRSTAGE H-Series",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.darkGreen),
                                    ),
                                    Text(
                                      "EcoWave 100",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 24.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "21000 BTU Ceiling-Mounted Air Solution\nR-32 Versatile Heating and Cooling Technology\nCutting-Edge Air Purification System",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontLightBlack),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("Assets/icons/ic_edit.png",
                                            width: 38, height: 38),
                                        Image.asset("Assets/icons/ic_copy.png",
                                            width: 20, height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_eyeoff.png",
                                            width: 20,
                                            height: 20),
                                        Image.asset(
                                            "Assets/icons/ic_delete.png",
                                            width: 20,
                                            height: 20),
                                      ],
                                    ),
                                    // InkWell(
                                    //   onTap: () {},
                                    //   child: Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     height: 36,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(6),
                                    //         border: Border.all(
                                    //             color: AppColors.borderColor)),
                                    //     child: Center(
                                    //       child: Text(
                                    //         "View Details",
                                    //         style: textStyle.SegoeUISemiBold
                                    //             .copyWith(
                                    //                 fontSize: 14.px,
                                    //                 color: AppColors
                                    //                     .fontLightBlack),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Image.asset(
                                        "Assets/images/image_6.png")),
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
        // : Expanded(
        //     child: Scrollbar(
        //       controller: scrollController,
        //       thumbVisibility: true,
        //       child: Theme(
        //         data: Theme.of(context).copyWith(
        //             scrollbarTheme: ScrollbarThemeData(
        //           thumbColor: WidgetStateProperty.all(Colors.transparent),
        //         )),
        //         child: SingleChildScrollView(
        //           controller: scrollController,
        //           child: Column(
        //             children: [
        //               MouseRegion(
        //                 onEnter: (_) => setState(() => hovering = true),
        //                 onExit: (_) => setState(() => hovering = false),
        //                 child: Container(
        //                   decoration: BoxDecoration(
        //                       border: Border.all(
        //                           color: hovering == true
        //                               ? AppColors.mainGreen
        //                               : AppColors.borderColor),
        //                       borderRadius: BorderRadius.circular(12),
        //                       color: AppColors.white_00),
        //                   padding: EdgeInsets.only(
        //                       top: 10, left: 10, right: 30, bottom: 10),
        //                   child: Row(
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       SizedBox(
        //                         width: 300,
        //                         child: Center(
        //                           child: Image.asset(
        //                             "Assets/images/image_4.png",
        //                             width: 200,
        //                           ),
        //                         ),
        //                       ),
        //                       SizedBox(width: 30),
        //                       SizedBox(
        //                         width: 250,
        //                         child: Column(
        //                           crossAxisAlignment:
        //                               CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "AIRSTAGE H-Series",
        //                               style: textStyle.SegoeUISemiBold
        //                                   .copyWith(
        //                                       fontSize: 14.px,
        //                                       color: AppColors.darkGreen),
        //                             ),
        //                             Text(
        //                               "QuantumDrive 3000",
        //                               style: textStyle.SegoeUISemiBold
        //                                   .copyWith(
        //                                       fontSize: 24.px,
        //                                       color:
        //                                           AppColors.fontLightBlack),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                       SizedBox(width: 50),
        //                       Expanded(
        //                         child: Text(
        //                           "12000 BTU Wall Mount"
        //                           "\nR-32 Heat Pump"
        //                           "\nBuilt-in Filtration",
        //                           style: textStyle.SegoeUI.copyWith(
        //                               fontSize: 14.px,
        //                               color: AppColors.fontLightBlack),
        //                         ),
        //                       ),
        //                       SizedBox(height: 20),
        //                       InkWell(
        //                         onTap: () {
        //                           viewProduct();
        //                         },
        //                         child: Text(
        //                           "View Details",
        //                           style: textStyle.SegoeUISemiBold.copyWith(
        //                               fontSize: 16.px,
        //                               color: AppColors.fontLightBlack),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(
        //                     top: 10, left: 10, right: 30, bottom: 10),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Center(
        //                         child: Image.asset(
        //                           "Assets/images/image_4.png",
        //                           width: 200,
        //                         ),
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "NovaSphere 500",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "19000 BTU Overhead Air Distribution Unit"
        //                         "\nR-290 Innovative Heat Transfer System"
        //                         "\nAdvanced Air Purification Technology",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(left: 10, right: 30),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Image.asset(
        //                         "Assets/images/image_5.png",
        //                         width: 300,
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "HyperFusion 7",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "20000 BTU Ceiling-Mounted Air Installation"
        //                         "\nR-410A Smart Climate Management"
        //                         "\nNext-Gen Air Quality Filtration",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(left: 10, right: 30),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Image.asset(
        //                         "Assets/images/image_6.png",
        //                         width: 300,
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "EcoWave 100",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "21000 BTU Ceiling-Mounted Air Solution"
        //                         "\nR-32 Versatile Heating and Cooling Technology"
        //                         "\nCutting-Edge Air Purification System",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               MouseRegion(
        //                 onEnter: (_) => setState(() => hovering = true),
        //                 onExit: (_) => setState(() => hovering = false),
        //                 child: Container(
        //                   decoration: BoxDecoration(
        //                       border: Border.all(
        //                           color: hovering == true
        //                               ? AppColors.mainGreen
        //                               : AppColors.borderColor),
        //                       borderRadius: BorderRadius.circular(12),
        //                       color: AppColors.white_00),
        //                   padding: EdgeInsets.only(
        //                       top: 10, left: 10, right: 30, bottom: 10),
        //                   child: Row(
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       SizedBox(
        //                         width: 300,
        //                         child: Center(
        //                           child: Image.asset(
        //                             "Assets/images/image_4.png",
        //                             width: 200,
        //                           ),
        //                         ),
        //                       ),
        //                       SizedBox(width: 30),
        //                       SizedBox(
        //                         width: 250,
        //                         child: Column(
        //                           crossAxisAlignment:
        //                               CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "AIRSTAGE H-Series",
        //                               style: textStyle.SegoeUISemiBold
        //                                   .copyWith(
        //                                       fontSize: 14.px,
        //                                       color: AppColors.darkGreen),
        //                             ),
        //                             Text(
        //                               "QuantumDrive 3000",
        //                               style: textStyle.SegoeUISemiBold
        //                                   .copyWith(
        //                                       fontSize: 24.px,
        //                                       color:
        //                                           AppColors.fontLightBlack),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                       SizedBox(width: 50),
        //                       Expanded(
        //                         child: Text(
        //                           "12000 BTU Wall Mount"
        //                           "\nR-32 Heat Pump"
        //                           "\nBuilt-in Filtration",
        //                           style: textStyle.SegoeUI.copyWith(
        //                               fontSize: 14.px,
        //                               color: AppColors.fontLightBlack),
        //                         ),
        //                       ),
        //                       SizedBox(height: 20),
        //                       InkWell(
        //                         onTap: () {
        //                           viewProduct();
        //                         },
        //                         child: Text(
        //                           "View Details",
        //                           style: textStyle.SegoeUISemiBold.copyWith(
        //                               fontSize: 16.px,
        //                               color: AppColors.fontLightBlack),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(
        //                     top: 10, left: 10, right: 30, bottom: 10),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Center(
        //                         child: Image.asset(
        //                           "Assets/images/image_4.png",
        //                           width: 200,
        //                         ),
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "NovaSphere 500",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "19000 BTU Overhead Air Distribution Unit"
        //                         "\nR-290 Innovative Heat Transfer System"
        //                         "\nAdvanced Air Purification Technology",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(left: 10, right: 30),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Image.asset(
        //                         "Assets/images/image_5.png",
        //                         width: 300,
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "HyperFusion 7",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "20000 BTU Ceiling-Mounted Air Installation"
        //                         "\nR-410A Smart Climate Management"
        //                         "\nNext-Gen Air Quality Filtration",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 15),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     border:
        //                         Border.all(color: AppColors.borderColor),
        //                     borderRadius: BorderRadius.circular(12),
        //                     color: AppColors.white_00),
        //                 padding: EdgeInsets.only(left: 10, right: 30),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     SizedBox(
        //                       width: 300,
        //                       child: Image.asset(
        //                         "Assets/images/image_6.png",
        //                         width: 300,
        //                       ),
        //                     ),
        //                     SizedBox(width: 30),
        //                     SizedBox(
        //                       width: 250,
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "AIRSTAGE H-Series",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 14.px,
        //                                     color: AppColors.darkGreen),
        //                           ),
        //                           Text(
        //                             "EcoWave 100",
        //                             style:
        //                                 textStyle.SegoeUISemiBold.copyWith(
        //                                     fontSize: 24.px,
        //                                     color:
        //                                         AppColors.fontLightBlack),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Expanded(
        //                       child: Text(
        //                         "21000 BTU Ceiling-Mounted Air Solution"
        //                         "\nR-32 Versatile Heating and Cooling Technology"
        //                         "\nCutting-Edge Air Purification System",
        //                         style: textStyle.SegoeUI.copyWith(
        //                             fontSize: 14.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                     SizedBox(height: 20),
        //                     InkWell(
        //                       onTap: () {
        //                         viewProduct();
        //                       },
        //                       child: Text(
        //                         "View Details",
        //                         style: textStyle.SegoeUISemiBold.copyWith(
        //                             fontSize: 16.px,
        //                             color: AppColors.fontLightBlack),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   )
      ],
    );
  }

  addSpesCategoryDialog() {
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add Spec Category",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 16.px,
                                    color: AppColors.fontBlack),
                              ),
                              SizedBox(height: 0.4.h),
                              Text(
                                "Add a new specification category to your product information.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontBlack),
                              ),
                            ],
                          ),
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
                      TextFormField(
                          style: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontBlack, fontSize: 14.px),
                          cursorHeight: 15,
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.white_00,
                            filled: true,
                            hintText: "Category Name",
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
                                    color: AppColors.mainGreen),
                                child: Center(
                                  child: Text(
                                    "Add",
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

  viewProduct() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
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
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        scrollbarTheme: ScrollbarThemeData(
                      thumbColor: WidgetStateProperty.all(Colors.transparent),
                    )),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("Assets/images/image_4.png"),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "ASUH09KMAS",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 20.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.close,
                                    color: AppColors.fontLightBlack,
                                    size: 20,
                                  ),
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
                                color: AppColors.fontLightBlack),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Performance",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px, color: AppColors.mainGreen),
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "SEER",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "21.30",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "21.30",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "12.50",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "12.50",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                fontSize: 14.px, color: AppColors.mainGreen),
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Indoor Unit Length (in)",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "10-5/8",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "32-13/16",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "8-3/4",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "14-5/16",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "19-11/16",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "19-5/16",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                fontSize: 14.px, color: AppColors.mainGreen),
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Min Pipe Length (ft)",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "25",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "1/4",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "3/8",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "25",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "10",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "Flare",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "Flare",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
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
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                              Text(
                                "N/A",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),

/*
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
                                                  "Add to Project",
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

*/
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          });
        }).whenComplete(() {
      setState(() {});
    });
  }

  addToProjectDialog() {
    int productCount = 32;

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Airstage H-Series",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 20.px,
                                      color: AppColors.fontBlack),
                                ),
                                Text(
                                  "ASUH09KMAS",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 20.px,
                                      color: AppColors.mainGreen),
                                ),
                              ],
                            ),
                          ),
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
                        "Select how many you need.",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.fontGrey),
                      ),
                      Divider(
                        color: AppColors.borderColor,
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              if (productCount != 1) {
                                setState(() {
                                  productCount = productCount - 1;
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              height: 35,
                              width: 35,
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.mainGreen,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "$productCount",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 30.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                productCount = productCount + 1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              height: 35,
                              width: 35,
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.mainGreen,
                                  size: 20,
                                ),
                              ),
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
                            child: Text(
                              "Price per product",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Text(
                            "\$10",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px, color: AppColors.fontGrey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Total",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Text(
                            "\$320",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 14.px, color: AppColors.fontGrey),
                          ),
                        ],
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
                                selectProjectZone();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.mainGreen),
                                child: Center(
                                  child: Text(
                                    "Add to project",
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
        }).whenComplete(() {});
  }

  selectProjectZone() {
    List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
    String? _selectedProject, _selectedZone;

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)), //this right here
              child: Container(
                width: 450,
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
                          Text(
                            "Airstage H-Series",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 20.px, color: AppColors.fontBlack),
                          ),
                          Expanded(
                            child: Text(
                              "ASUH09KMAS",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 20.px, color: AppColors.mainGreen),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close,
                                  color: AppColors.fontLightBlack))
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Choose the project to which you want to add this\nproduct and make any necessary updates.",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.fontGrey),
                      ),
                      Divider(
                        color: AppColors.borderColor,
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColors.white_00,
                            border: Border.all(
                                color: AppColors.fontGrey.withOpacity(.4))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: DropdownButton<String>(
                          isDense: true,
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontBlack),
                          underline: SizedBox(),
                          value: _selectedProject,
                          hint: Text("Project Name"),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedProject =
                                  newValue; // Update the selected value
                            });
                          },
                          items: options
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColors.white_00,
                            border: Border.all(
                                color: AppColors.fontGrey.withOpacity(.4))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: DropdownButton<String>(
                          isDense: true,
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontBlack),
                          underline: SizedBox(),
                          value: _selectedZone,
                          hint: Text("Select zone"),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedZone =
                                  newValue; // Update the selected value
                            });
                          },
                          items: options
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
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
                                    "Add to project",
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
        }).whenComplete(() {});
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
                        "Delete product",
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
}
