import 'package:flutter/material.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:sizer/sizer.dart';

class AdminNotificationsScreen extends StatefulWidget {
  const AdminNotificationsScreen({super.key});

  @override
  State<AdminNotificationsScreen> createState() =>
      _AdminNotificationsScreenState();
}

class _AdminNotificationsScreenState extends State<AdminNotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        "Product has been retired",
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
                            "Learn more",
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
                        "Just to let you know this might be a problem",
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
                            "Learn more",
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
                        "New product added!",
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
                            "Learn more",
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
                        "New Product Family added!",
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
                            "Learn more",
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
    );
  }
}
