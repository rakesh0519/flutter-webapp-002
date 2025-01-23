import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Values/AppColors.dart';
import '../../../../../Values/Constants.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  bool isAllInvoice = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Invoices",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 16.px, color: AppColors.fontBlack),
                            ),
                          ),
                          width > 660
                              ? InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 100,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(
                                            color: AppColors.darkBorderColor
                                                .withOpacity(0.3))),
                                    child: Center(
                                      child: Text(
                                        "Download all",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color:
                                                    AppColors.selectIconColor),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox.shrink(),
                          SizedBox(width: 10),
                          width > 660
                              ? Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: AppColors.mainGreen,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "Assets/icons/ic_upload.png",
                                        width: 20,
                                        height: 20,
                                        color: AppColors.white_00,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        "Upload",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color: AppColors.white_00),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    width < 660
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 100,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(
                                            color: AppColors.darkBorderColor
                                                .withOpacity(0.3))),
                                    child: Center(
                                      child: Text(
                                        "Download all",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color:
                                                    AppColors.selectIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: AppColors.mainGreen,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "Assets/icons/ic_upload.png",
                                        width: 20,
                                        height: 20,
                                        color: AppColors.white_00,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        "Upload",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color: AppColors.white_00),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        : SizedBox.shrink(),
                    Divider(
                      color: AppColors.borderColor,
                      height: 0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.borderColor.withOpacity(0.3)),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isAllInvoice = !isAllInvoice;
                                });
                              },
                              child: Image.asset(
                                  isAllInvoice == true
                                      ? "Assets/icons/ic_checkbox_fill.png"
                                      : "Assets/icons/ic_checkbox.png",
                                  width: 18,
                                  height: 18),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  "Invoice",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Icon(
                                    Icons.arrow_downward_rounded,
                                    color: AppColors.fontGrey,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Date",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px, color: AppColors.fontGrey),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Status",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px, color: AppColors.fontGrey),
                            ),
                          ),
                          width > 660
                              ? Expanded(
                                  flex: 2,
                                  child: SizedBox(),
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.borderColor,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset("Assets/icons/ic_checkbox.png",
                                width: 18, height: 18),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "#3066",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Jan 6, 2025",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.borderGreen),
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColors.backGreen),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 3),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "Assets/icons/ic_small_check.png",
                                          width: 15),
                                      SizedBox(width: 4),
                                      Text(
                                        "Paid",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color: AppColors.mainGreen),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width > 660
                              ? Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Delete",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontBlack),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Edit",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.mainGreen),
                                      ),
                                    ],
                                  ))
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.borderColor,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                                "Assets/icons/ic_checkbox_fill.png",
                                width: 18,
                                height: 18),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "#3066",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Jan 6, 2025",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.borderRed),
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColors.backRed),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 3),
                                  child: Row(
                                    children: [
                                      Image.asset("Assets/icons/ic_cancel.png",
                                          width: 15, color: AppColors.red_00),
                                      SizedBox(width: 4),
                                      Text(
                                        "Canceled",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color: AppColors.red_00),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width > 660
                              ? Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Delete",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontBlack),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Edit",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.mainGreen),
                                      ),
                                    ],
                                  ))
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.borderColor,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset("Assets/icons/ic_checkbox.png",
                                width: 18, height: 18),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "#3066",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Jan 6, 2025",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.borderColor),
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColors.borderColor
                                          .withOpacity(0.3)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 3),
                                  child: Row(
                                    children: [
                                      Image.asset("Assets/icons/ic_reverse.png",
                                          width: 15),
                                      SizedBox(width: 4),
                                      Text(
                                        "Refunded",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 12.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width > 660
                              ? Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Delete",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.fontBlack),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Edit",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 14.px,
                                                color: AppColors.mainGreen),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.borderColor,
                      height: 0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white_00,
                        border: Border.all(color: AppColors.borderColor)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_back_rounded,
                          size: 20,
                          color: AppColors.fontLightBlack,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Previous",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                  width > 660
                      ? Expanded(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.lightBg,
                              ),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontBlack),
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white_00,
                              ),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white_00,
                              ),
                              child: Center(
                                child: Text(
                                  "3",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "...",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white_00,
                              ),
                              child: Center(
                                child: Text(
                                  "8",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white_00,
                              ),
                              child: Center(
                                child: Text(
                                  "9",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white_00,
                              ),
                              child: Center(
                                child: Text(
                                  "10",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontLightBlack),
                                ),
                              ),
                            ),
                          ],
                        ))
                      : Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Page 1 of 10',
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ],
                          ),
                        ),
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white_00,
                        border: Border.all(color: AppColors.borderColor)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 12),
                        Text(
                          "Next",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontBlack),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 20,
                          color: AppColors.fontLightBlack,
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
