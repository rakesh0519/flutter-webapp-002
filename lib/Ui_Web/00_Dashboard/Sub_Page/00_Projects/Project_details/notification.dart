import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Assets/icons/ic_alert_green.png",
                    width: 38,
                    height: 38,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’ve just released a new feature",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum dolor.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Dismiss",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "View changes",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px, color: AppColors.mainGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.fontGrey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Assets/icons/ic_alert_red.png",
                    width: 38,
                    height: 38,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’ve just released a new feature",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum dolor.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Dismiss",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "View changes",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px, color: AppColors.mainGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.fontGrey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Assets/icons/ic_verified.png",
                    width: 38,
                    height: 38,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’ve just released a new feature",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum dolor.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Dismiss",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "View changes",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px, color: AppColors.mainGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.fontGrey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Assets/icons/ic_alert_green.png",
                    width: 38,
                    height: 38,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’ve just released a new feature",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum dolor.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Dismiss",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "View changes",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px, color: AppColors.mainGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.fontGrey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Assets/icons/ic_alert_green.png",
                    width: 38,
                    height: 38,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’ve just released a new feature",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum dolor.",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px, color: AppColors.fontGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Dismiss",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.fontLightBlack),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "View changes",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px, color: AppColors.mainGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.fontGrey,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
