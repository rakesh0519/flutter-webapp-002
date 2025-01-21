import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/user_projects/admin_notifications.dart';
import 'package:fujitsuweb/Ui_admin/Dashboard/Sub_pages/user_projects/admin_systems.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:sizer/sizer.dart';

class UserProjectsDetails extends StatefulWidget {
  const UserProjectsDetails({super.key});

  @override
  State<UserProjectsDetails> createState() => _UserProjectsDetailsState();
}

class _UserProjectsDetailsState extends State<UserProjectsDetails> {
  String selected = "Project Details";

  TextEditingController projectNameController =
      TextEditingController(text: "Skyline Project");
  TextEditingController projectDetailsController = TextEditingController(
      text:
          "We are excited to announce the development of a groundbreaking eco-friendly building in San Francisco that promises to transform the urban landscape with its cutting-edge architecture and green technologies.");
  TextEditingController clientFirstController =
      TextEditingController(text: "Oliva");
  TextEditingController clientLastController =
      TextEditingController(text: "Rhye");
  TextEditingController boardNameController =
      TextEditingController(text: "Newest Design");
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipController = TextEditingController();

  List<String> stateNames = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return SingleChildScrollView(
      child: Column(
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
                      "Project Name",
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
              InkWell(
                onTap: () {
                  shareDialog();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "Assets/icons/ic_share.png",
                    width: 20,
                    height: 20,
                    color: AppColors.fontLightBlack,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              InkWell(
                hoverColor: AppColors.white_00,
                splashColor: AppColors.white_00,
                onTap: () {
                  setState(() {
                    selected = "Project Details";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == "Project Details"
                          ? AppColors.selectColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 10),
                  child: Text(
                    "Project Details",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 12.px, color: AppColors.selectIconColor),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                hoverColor: AppColors.white_00,
                splashColor: AppColors.white_00,
                onTap: () {
                  setState(() {
                    selected = "Systems";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == "Systems"
                          ? AppColors.selectColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 10),
                  child: Text(
                    "Systems",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 12.px, color: AppColors.selectIconColor),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                hoverColor: AppColors.white_00,
                splashColor: AppColors.white_00,
                onTap: () {
                  setState(() {
                    selected = "Notifications";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == "Notifications"
                          ? AppColors.selectColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 10),
                  child: Text(
                    "Notifications",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 12.px, color: AppColors.selectIconColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          selected == "Project Details"
              ? Scrollbar(
                  controller: scrollController,
                  thumbVisibility: true,
                  child: width > 1000
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'About the project',
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.selectIconColor),
                                  ),
                                  SizedBox(height: 1.h),
                                  Text(
                                    'Dolor enim eu tortor urna sed duis nulla. Aliquam vestibulum, nulla odio nisl vitae. In aliquet pellentesque aenean hac vestibulum turpis mi bibendum diam. Tempor integer aliquam in vitae malesuada fringilla. Elit nisi in eleifend sed nisi. Pulvinar at orci, proin imperdiet commodo consectetur convallis risus. Ipsum sit mattis nulla quam nulla. Gravida id gravida ac enim mauris id.Diam elit, orci, tincidunt aenean tempus. Quis velit eget ut tortor tellus. Sed vel, congue felis elit erat nam nibh orci.Non pellentesque congue eget consectetur turpis.Sapien, dictum molestie sem tempor. Diam elit, orci, tincidunt aenean tempus. Quis velit eget ut tortor tellus. Sed vel, congue felis elit erat nam nibh orci.',
                                    style: TextStyle(
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'Assets/icons/logo.png',
                                ),
                              ),
                            ),
                            SizedBox(width: 100.0),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'Assets/icons/logo.png',
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              'About the project',
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 14.px,
                                  color: AppColors.selectIconColor),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              'Dolor enim eu tortor urna sed duis nulla. Aliquam vestibulum, nulla odio nisl vitae. In aliquet pellentesque aenean hac vestibulum turpis mi bibendum diam. Tempor integer aliquam in vitae malesuada fringilla. Elit nisi in eleifend sed nisi. Pulvinar at orci, proin imperdiet commodo consectetur convallis risus. Ipsum sit mattis nulla quam nulla. Gravida id gravida ac enim mauris id.Diam elit, orci, tincidunt aenean tempus. Quis velit eget ut tortor tellus. Sed vel, congue felis elit erat nam nibh orci.Non pellentesque congue eget consectetur turpis.Sapien, dictum molestie sem tempor. Diam elit, orci, tincidunt aenean tempus. Quis velit eget ut tortor tellus. Sed vel, congue felis elit erat nam nibh orci.',
                              style: TextStyle(
                                color: AppColors.fontGrey,
                              ),
                            ),
                          ],
                        ),
                )
              : selected == "Systems"
                  ? AdminSystemsScreen()
                  : AdminNotificationsScreen()
        ],
      ),
    );
  }

  addDocument() {
    String selected = "scan";

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)), //this right here
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
                          Image.asset("Assets/icons/ic_notes.png",
                              width: 38, height: 38),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Add document",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 16.px,
                                      color: AppColors.fontBlack),
                                ),
                                Text(
                                  "Choose how you would like to add as document to your project.",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack),
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
                      Divider(
                        color: AppColors.borderColor,
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selected = "scan";
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: selected == "scan"
                                            ? AppColors.mainGreen
                                            : AppColors.borderColor)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Scan",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 18.px,
                                                color:
                                                    AppColors.selectIconColor),
                                      ),
                                    ),
                                    selected == "scan"
                                        ? Image.asset(
                                            "Assets/icons/ic_checkbox_fill.png",
                                            width: 15,
                                          )
                                        : Image.asset(
                                            "Assets/icons/ic_checkbox.png",
                                            width: 15,
                                          )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selected = "upload";
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: selected == "upload"
                                            ? AppColors.mainGreen
                                            : AppColors.borderColor)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Upload",
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
                                                fontSize: 18.px,
                                                color:
                                                    AppColors.selectIconColor),
                                      ),
                                    ),
                                    selected == "upload"
                                        ? Image.asset(
                                            "Assets/icons/ic_checkbox_fill.png",
                                            width: 15,
                                          )
                                        : Image.asset(
                                            "Assets/icons/ic_checkbox.png",
                                            width: 15,
                                          )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.borderColor,
                        height: 50,
                      ),
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
                                if (selected == "scan") {
                                  Navigator.pop(context);
                                  scanDialog();
                                } else {
                                  Navigator.pop(context);
                                  uploadDialog();
                                }
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
          });
        }).whenComplete(() {});
  }

  scanDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)), //this right here
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
                        Image.asset("Assets/icons/ic_notes.png", width: 40),
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
                      "Scan your document",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 16.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "To add this document to your project, please scan the document by\nplacing within the scanner below.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 4.h),
                    Image.asset("Assets/images/scan_image.png"),
                    SizedBox(height: 4.h),
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

  uploadDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)), //this right here
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
                        Image.asset("Assets/icons/ic_notes.png", width: 40),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Upload and attach files",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 16.px,
                                    color: AppColors.fontBlack),
                              ),
                              Text(
                                "Upload and attach files to this project.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontBlack),
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
                    SizedBox(height: 4.h),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.mainGreen)),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.white_00,
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              padding: EdgeInsets.all(11),
                              child: Image.asset("Assets/icons/ic_upload.png",
                                  width: 25, height: 25)),
                          SizedBox(height: 6),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Click to upload ',
                                  style: textStyle.SegoeUISemiBold.copyWith(
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
                                fontSize: 12.px, color: AppColors.fontBlack),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.borderColor)),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset("Assets/icons/ic_pdf.png", width: 40),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Tech design requirements.pdf",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.selectIconColor),
                                      ),
                                    ),
                                    Image.asset(
                                        "Assets/icons/ic_checkbox_fill.png",
                                        width: 15),
                                  ],
                                ),
                                Text(
                                  "200 KB",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.selectIconColor),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: AppColors.mainGreen),
                                            color: AppColors.mainGreen),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "100%",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.selectIconColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
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
                                  "Attach files",
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

  requestDialog() {
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
                        Image.asset("Assets/icons/ic_notes.png", width: 40),
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
                      "Request Quote",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 18.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 0.4.h),
                    Text(
                      "Plan your project by getting the estimate for\nall the products you have added.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Email address",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px, color: AppColors.fontBlack),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                        controller: emailController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter email address",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset("Assets/icons/ic_mail.png",
                                width: 15,
                                height: 15,
                                color: AppColors.fontGrey),
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
                        )),
                    SizedBox(height: 10),
                    TextFormField(
                        controller: emailController,
                        style: textStyle.SegoeUI.copyWith(
                            color: AppColors.fontBlack, fontSize: 14.px),
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: AppColors.white_00,
                          filled: true,
                          hintText: "Enter email address",
                          hintStyle: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontGrey, fontSize: 14.px),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset("Assets/icons/ic_mail.png",
                                width: 15,
                                height: 15,
                                color: AppColors.fontGrey),
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
                        )),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.add, color: AppColors.mainGreen, size: 20),
                        SizedBox(width: 10),
                        Text(
                          "Add another",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.mainGreen),
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
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.mainGreen),
                              child: Center(
                                child: Text(
                                  "Send request",
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
