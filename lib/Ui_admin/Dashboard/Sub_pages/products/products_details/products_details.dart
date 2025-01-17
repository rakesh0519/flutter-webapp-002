import 'package:flutter/material.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:sizer/sizer.dart';

class ProductsDetailsScreen extends StatefulWidget {
  const ProductsDetailsScreen({super.key});

  @override
  State<ProductsDetailsScreen> createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
  bool hideJSeries = false;
  bool disablePush = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Details *",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px, color: AppColors.fontLightBlack),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 500,
                child: Container(
                  decoration: BoxDecoration(color: AppColors.white_00),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Modal *",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "000000",
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
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        SizedBox(height: 10),
                        Text(
                          " Indoor Model*",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "ASUHO9LMAS",
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
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        SizedBox(height: 10),
                        Text(
                          " Outdoor Model*",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "ASUHO9LMAS",
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
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        SizedBox(height: 10),
                        Text(
                          " Key Specifications*",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack, fontSize: 14.px),
                            cursorHeight: 15,
                            maxLines: 3,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText:
                                  "12000 BTU Wall Mount R-32 Heat Pump Built-in Filtration",
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
                                      color: AppColors.red_00.withOpacity(.4)),
                                  borderRadius: BorderRadius.circular(6)),
                            )),

                        //   Container(
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: AppColors.fontGrey.withOpacity(0.4)),
                        //         borderRadius: BorderRadius.circular(6)),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: Center(
                        //             child: Text(
                        //               "untitledui.com/profile/",
                        //               style: textStyle.SegoeUI.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.fontGrey),
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: VerticalDivider(
                        //               color: AppColors.fontGrey.withOpacity(0.4)),
                        //         ),
                        //         Expanded(
                        //           child: TextFormField(
                        //             controller: titleController,
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 color: AppColors.fontBlack,
                        //                 fontSize: 14.px),
                        //             cursorHeight: 15,
                        //             decoration: InputDecoration(
                        //               isDense: true,
                        //               fillColor: AppColors.white_00,
                        //               filled: true,
                        //               hintText: "",
                        //               hintStyle: textStyle.SegoeUI.copyWith(
                        //                   color: AppColors.fontGrey,
                        //                   fontSize: 14.px),
                        //               enabledBorder: InputBorder.none,
                        //               focusedBorder: InputBorder.none,
                        //               focusedErrorBorder: InputBorder.none,
                        //               errorBorder: InputBorder.none,
                        //             ),
                        //           ),
                        //         ),
                        //         Image.asset("Assets/icons/ic_help.png",
                        //             width: 15, height: 15),
                        //         SizedBox(width: 10),
                        //       ],
                        //     ),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Divider(
                        //     color: AppColors.borderColor,
                        //     height: 40,
                        //   ),
                        //   Row(
                        //     children: [
                        //       Text(
                        //         "Tagline *",
                        //         style: textStyle.SegoeUISemiBold.copyWith(
                        //             fontSize: 14.px,
                        //             color: AppColors.fontLightBlack),
                        //       ),
                        //       SizedBox(width: 6),
                        //       Image.asset("Assets/icons/ic_help.png",
                        //           width: 15, height: 15),
                        //     ],
                        //   ),
                        //   Text(
                        //     "A quick snapshot of your company.",
                        //     style: textStyle.SegoeUI.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontGrey),
                        //   ),
                        //   SizedBox(height: 10),
                        //   TextFormField(
                        //     controller: tagController,
                        //     style: textStyle.SegoeUI.copyWith(
                        //         color: AppColors.fontBlack, fontSize: 14.px),
                        //     maxLines: 3,
                        //     cursorHeight: 15,
                        //     decoration: InputDecoration(
                        //       isDense: true,
                        //       fillColor: AppColors.white_00,
                        //       filled: true,
                        //       hintText: "",
                        //       hintStyle: textStyle.SegoeUI.copyWith(
                        //           color: AppColors.fontGrey, fontSize: 14.px),
                        //       enabledBorder: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: AppColors.fontGrey.withOpacity(.4)),
                        //           borderRadius: BorderRadius.circular(6)),
                        //       focusedBorder: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: AppColors.fontGrey.withOpacity(.4)),
                        //           borderRadius: BorderRadius.circular(6)),
                        //       focusedErrorBorder: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: AppColors.fontGrey.withOpacity(.4)),
                        //           borderRadius: BorderRadius.circular(6)),
                        //       errorBorder: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: AppColors.red_00.withOpacity(.4)),
                        //           borderRadius: BorderRadius.circular(6)),
                        //     ),
                        //   ),
                        //   SizedBox(height: 3),
                        //   Text(
                        //     "40 characters left",
                        //     style: textStyle.SegoeUI.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontGrey),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Divider(
                        //     color: AppColors.borderColor,
                        //     height: 40,
                        //   ),
                        //   Text(
                        //     "Company logo *",
                        //     style: textStyle.SegoeUISemiBold.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontLightBlack),
                        //   ),
                        //   Text(
                        //     "Update your company logo and then choose\nwhere you want it to display.",
                        //     style: textStyle.SegoeUI.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontGrey),
                        //   ),
                        //   SizedBox(height: 20),
                        //   Row(
                        //     children: [
                        //       Image.asset("Assets/images/green_logo.png",
                        //           width: 140),
                        //       SizedBox(width: 10),
                        //       Expanded(
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(8),
                        //               border:
                        //                   Border.all(color: AppColors.borderColor)),
                        //           padding: EdgeInsets.symmetric(vertical: 10),
                        //           child: Column(
                        //             children: [
                        //               Container(
                        //                   decoration: BoxDecoration(
                        //                       borderRadius:
                        //                           BorderRadius.circular(10),
                        //                       color: AppColors.white_00,
                        //                       border: Border.all(
                        //                           color: AppColors.borderColor)),
                        //                   padding: EdgeInsets.all(11),
                        //                   child: Image.asset(
                        //                       "Assets/icons/ic_upload.png",
                        //                       width: 25,
                        //                       height: 25)),
                        //               SizedBox(height: 6),
                        //               Text.rich(
                        //                 TextSpan(
                        //                   children: [
                        //                     TextSpan(
                        //                       text: 'Click to upload ',
                        //                       style: textStyle.SegoeUISemiBold
                        //                           .copyWith(
                        //                               fontSize: 14.px,
                        //                               color: AppColors.mainGreen),
                        //                     ),
                        //                     TextSpan(
                        //                       text: 'or drag and drop',
                        //                       style: textStyle.SegoeUI.copyWith(
                        //                           fontSize: 14.px,
                        //                           color: AppColors.fontGrey),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               Text(
                        //                 "SVG, PNG, JPG or GIF (max. 800x400px)",
                        //                 style: textStyle.SegoeUI.copyWith(
                        //                     fontSize: 12.px,
                        //                     color: AppColors.fontBlack),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        //   SizedBox(height: 10),
                        //   Divider(
                        //     color: AppColors.borderColor,
                        //     height: 40,
                        //   ),
                        //   Text(
                        //     "Branding",
                        //     style: textStyle.SegoeUISemiBold.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontLightBlack),
                        //   ),
                        //   Text(
                        //     "Add your logo to reports and emails.",
                        //     style: textStyle.SegoeUI.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontGrey),
                        //   ),
                        //   SizedBox(height: 20),
                        //   Text(
                        //     "View Examples",
                        //     style: textStyle.SegoeUISemiBold.copyWith(
                        //         fontSize: 14.px, color: AppColors.mainGreen),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Row(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.only(top: 5),
                        //         child: Image.asset(
                        //           "Assets/icons/ic_checkbox_fill.png",
                        //           width: 16,
                        //           height: 16,
                        //         ),
                        //       ),
                        //       SizedBox(width: 10),
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Reports",
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 fontSize: 14.px,
                        //                 color: AppColors.fontLightBlack),
                        //           ),
                        //           Text(
                        //             "Include my logo in summary reports.",
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 fontSize: 14.px,
                        //                 color: AppColors.fontLightBlack),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        //   SizedBox(height: 10),
                        //   Row(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.only(top: 5),
                        //         child: Image.asset(
                        //           "Assets/icons/ic_checkbox_fill.png",
                        //           width: 16,
                        //           height: 16,
                        //         ),
                        //       ),
                        //       SizedBox(width: 10),
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Emails",
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 fontSize: 14.px,
                        //                 color: AppColors.fontLightBlack),
                        //           ),
                        //           Text(
                        //             "Include my logo in summary emails.",
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 fontSize: 14.px,
                        //                 color: AppColors.fontLightBlack),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        //   SizedBox(height: 10),
                        //   Divider(
                        //     color: AppColors.borderColor,
                        //     height: 40,
                        //   ),
                        //   Text(
                        //     "Social profiles",
                        //     style: textStyle.SegoeUISemiBold.copyWith(
                        //         fontSize: 14.px, color: AppColors.fontLightBlack),
                        //   ),
                        //   SizedBox(height: 15),
                        //   Container(
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: AppColors.fontGrey.withOpacity(0.4)),
                        //         borderRadius: BorderRadius.circular(6)),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: Center(
                        //             child: Text(
                        //               "twitter.com/",
                        //               style: textStyle.SegoeUI.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.fontGrey),
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: VerticalDivider(
                        //               color: AppColors.fontGrey.withOpacity(0.4)),
                        //         ),
                        //         Expanded(
                        //           child: TextFormField(
                        //             controller: titleController,
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 color: AppColors.fontBlack,
                        //                 fontSize: 14.px),
                        //             cursorHeight: 15,
                        //             decoration: InputDecoration(
                        //               isDense: true,
                        //               fillColor: AppColors.white_00,
                        //               filled: true,
                        //               hintText: "",
                        //               hintStyle: textStyle.SegoeUI.copyWith(
                        //                   color: AppColors.fontGrey,
                        //                   fontSize: 14.px),
                        //               enabledBorder: InputBorder.none,
                        //               focusedBorder: InputBorder.none,
                        //               focusedErrorBorder: InputBorder.none,
                        //               errorBorder: InputBorder.none,
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //       ],
                        //     ),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Container(
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: AppColors.fontGrey.withOpacity(0.4)),
                        //         borderRadius: BorderRadius.circular(6)),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: Center(
                        //             child: Text(
                        //               "facebook.com/",
                        //               style: textStyle.SegoeUI.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.fontGrey),
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: VerticalDivider(
                        //               color: AppColors.fontGrey.withOpacity(0.4)),
                        //         ),
                        //         Expanded(
                        //           child: TextFormField(
                        //             controller: titleController,
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 color: AppColors.fontBlack,
                        //                 fontSize: 14.px),
                        //             cursorHeight: 15,
                        //             decoration: InputDecoration(
                        //               isDense: true,
                        //               fillColor: AppColors.white_00,
                        //               filled: true,
                        //               hintText: "",
                        //               hintStyle: textStyle.SegoeUI.copyWith(
                        //                   color: AppColors.fontGrey,
                        //                   fontSize: 14.px),
                        //               enabledBorder: InputBorder.none,
                        //               focusedBorder: InputBorder.none,
                        //               focusedErrorBorder: InputBorder.none,
                        //               errorBorder: InputBorder.none,
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //       ],
                        //     ),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Container(
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: AppColors.fontGrey.withOpacity(0.4)),
                        //         borderRadius: BorderRadius.circular(6)),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: Center(
                        //             child: Text(
                        //               "linkedin.com/company/",
                        //               style: textStyle.SegoeUI.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.fontGrey),
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //         SizedBox(
                        //           height: 36,
                        //           child: VerticalDivider(
                        //               color: AppColors.fontGrey.withOpacity(0.4)),
                        //         ),
                        //         Expanded(
                        //           child: TextFormField(
                        //             controller: titleController,
                        //             style: textStyle.SegoeUI.copyWith(
                        //                 color: AppColors.fontBlack,
                        //                 fontSize: 14.px),
                        //             cursorHeight: 15,
                        //             decoration: InputDecoration(
                        //               isDense: true,
                        //               fillColor: AppColors.white_00,
                        //               filled: true,
                        //               hintText: "",
                        //               hintStyle: textStyle.SegoeUI.copyWith(
                        //                   color: AppColors.fontGrey,
                        //                   fontSize: 14.px),
                        //               enabledBorder: InputBorder.none,
                        //               focusedBorder: InputBorder.none,
                        //               focusedErrorBorder: InputBorder.none,
                        //               errorBorder: InputBorder.none,
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(width: 10),
                        //       ],
                        //     ),
                        //   ),
                        //   SizedBox(height: 10),
                        //   Divider(
                        //     color: AppColors.borderColor,
                        //     height: 40,
                        //   ),
                        //   Row(
                        //     children: [
                        //       Expanded(child: SizedBox()),
                        //       InkWell(
                        //         onTap: () {
                        //           Navigator.pop(context);
                        //         },
                        //         child: Container(
                        //           height: 38,
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(6),
                        //               color: AppColors.white_00,
                        //               border: Border.all(
                        //                   color: AppColors.darkBorderColor
                        //                       .withOpacity(0.3))),
                        //           padding: EdgeInsets.symmetric(horizontal: 15),
                        //           child: Center(
                        //             child: Text(
                        //               "Cancel",
                        //               style: textStyle.SegoeUISemiBold.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.selectIconColor),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //       SizedBox(width: 15),
                        //       InkWell(
                        //         onTap: () {
                        //           Navigator.pop(context);
                        //         },
                        //         child: Container(
                        //           height: 38,
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(6),
                        //               color: AppColors.mainGreen),
                        //           padding: EdgeInsets.symmetric(horizontal: 20),
                        //           child: Center(
                        //             child: Text(
                        //               "Save changes",
                        //               style: textStyle.SegoeUISemiBold.copyWith(
                        //                   fontSize: 14.px,
                        //                   color: AppColors.white_00),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   )
                        // ],
                      ]),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 500,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightBg,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Product Image *",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px,
                                color: AppColors.fontLightBlack),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Color(0xff008996))),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      padding: EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'Assets/icons/ic_upload.png',
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Click to upload ',
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors.mainGreen),
                                          ),
                                          TextSpan(
                                            text: 'or drag and drop',
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
                                          fontSize: 12.px,
                                          color: AppColors.fontBlack),
                                    ),
                                  ],
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
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: AppColors.borderColor,
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Specifications *",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px, color: AppColors.fontLightBlack),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 500,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: AppColors.borderColor)),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Performance",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px, color: AppColors.fontGrey),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'seer'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '21.30'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'seer2'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '21.30'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'eer'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '12.50'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'eer2'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '12.50'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Row(children: <Widget>[
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
                                  color: AppColors.white_00,
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Add Parameter',
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontGrey),
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
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: AppColors.borderColor)),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dimensions & Weights",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px, color: AppColors.fontGrey),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Indoor Unit Length (in)',
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '10-5/8'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Indoor Unit Width (in)',
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '32-13/16'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Indoor Unit Hight (in)',
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '8-3/4'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: AppColors.borderColor),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Outdoor Unit Length (in)',
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    color: AppColors.borderColor,
                                    width: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '14-5/16'.toUpperCase(),
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Row(children: <Widget>[
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
                                  color: AppColors.white_00,
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Add Parameter',
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontGrey),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              SizedBox(
                width: 300,
                child: Container(),
              ),
              SizedBox(
                width: 500,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: AppColors.borderColor,
                          height: 36,
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.mainGreen,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Add Parameter',
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 14.px, color: AppColors.white_00),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: AppColors.borderColor,
                          height: 36,
                        )),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
