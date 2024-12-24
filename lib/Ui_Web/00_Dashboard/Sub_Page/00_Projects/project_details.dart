import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Values/AppColors.dart';
import '../../../../Values/Constants.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {

  String selected = "Project Details";

  TextEditingController projectNameController = TextEditingController(text: "Skyline Project");
  TextEditingController projectDetailsController = TextEditingController(
    text: "We are excited to announce the development of a groundbreaking eco-friendly building in San Francisco that promises to transform the urban landscape with its cutting-edge architecture and green technologies."
  );
  TextEditingController clientFirstController = TextEditingController(text: "Oliva");
  TextEditingController clientLastController = TextEditingController(text: "Rhye");
  TextEditingController boardNameController = TextEditingController(text: "Newest Design");
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipController = TextEditingController();

  String? _selectedState;
  String? _selectedCity;
  List<String> stateNames = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

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
                    "Project Name",
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
                "Assets/icons/ic_green_add.png", width: 38, height: 38
            ),

            SizedBox(width: 0.6.w),

            Image.asset(
                "Assets/icons/ic_notes.png", width: 38, height: 38
            ),

            SizedBox(width: 0.6.w),

            Image.asset(
                "Assets/icons/ic_save.png", width: 38, height: 38
            ),

            SizedBox(width: 0.6.w),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  "Assets/icons/ic_share.png",
                  width: 20, height: 20,
                color: AppColors.fontLightBlack,
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
                    color: selected == "Project Details" ? AppColors.selectColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(6)
                ),
                padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 12),
                child: Text(
                  "Project Details",
                  style: textStyle.SegoeUISemiBold.copyWith(
                      fontSize: 14.px,
                      color: AppColors.selectIconColor
                  ),
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
                    color: selected == "Systems" ? AppColors.selectColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(6)
                ),
                padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 12),
                child: Text(
                  "Systems",
                  style: textStyle.SegoeUISemiBold.copyWith(
                      fontSize: 14.px,
                      color: AppColors.selectIconColor
                  ),
                ),
              ),
            ),

            SizedBox(width: 10),

            InkWell(
              hoverColor: AppColors.white_00,
              splashColor: AppColors.white_00,
              onTap: () {

                setState(() {
                  selected = "Invoices";
                });

              },
              child: Container(
                decoration: BoxDecoration(
                    color: selected == "Invoices" ? AppColors.selectColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(6)
                ),
                padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 12),
                child: Text(
                  "Invoices",
                  style: textStyle.SegoeUISemiBold.copyWith(
                      fontSize: 14.px,
                      color: AppColors.selectIconColor
                  ),
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
                    color: selected == "Notifications" ? AppColors.selectColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(6)
                ),
                padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 12),
                child: Text(
                  "Notifications",
                  style: textStyle.SegoeUISemiBold.copyWith(
                      fontSize: 14.px,
                      color: AppColors.selectIconColor
                  ),
                ),
              ),
            ),

          ],
        ),

        SizedBox(height: 2.h),

        selected == "Project Details"
            ?
        Expanded(
          child: Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 45.w,
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
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Project Name *",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: TextFormField(
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
                                      hintText: "",
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
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Project Description *",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontBlack
                                      ),
                                    ),
                                    Text(
                                      "White a short introduction",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontGrey
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                        controller: projectDetailsController,
                                        style: textStyle.SegoeUI.copyWith(
                                            color: AppColors.fontBlack,
                                            fontSize: 14.px
                                        ),
                                        maxLines: 6,
                                        cursorHeight: 15,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          fillColor: AppColors.white_00,
                                          filled: true,
                                          hintText: "",
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
                                    Text(
                                      "275 characters left",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontGrey
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Client Name *",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: Row(
                                  children: [

                                    Expanded(
                                      child: TextFormField(
                                          controller: clientFirstController,
                                          style: textStyle.SegoeUI.copyWith(
                                              color: AppColors.fontBlack,
                                              fontSize: 14.px
                                          ),
                                          cursorHeight: 15,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            fillColor: AppColors.white_00,
                                            filled: true,
                                            hintText: "",
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
                                    ),

                                    SizedBox(width: 10),

                                    Expanded(
                                      child: TextFormField(
                                          controller: clientLastController,
                                          style: textStyle.SegoeUI.copyWith(
                                              color: AppColors.fontBlack,
                                              fontSize: 14.px
                                          ),
                                          cursorHeight: 15,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            fillColor: AppColors.white_00,
                                            filled: true,
                                            hintText: "",
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
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Board Name *",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: TextFormField(
                                    controller: boardNameController,
                                    style: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontBlack,
                                        fontSize: 14.px
                                    ),
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      fillColor: AppColors.white_00,
                                      filled: true,
                                      hintText: "",
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
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Client photo",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontBlack
                                      ),
                                    ),
                                    Text(
                                      "This will be displayed on the\nproject profile",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontGrey
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: AppColors.white_00,
                                            border: Border.all(color: AppColors.borderColor)
                                        ),
                                        padding: EdgeInsets.all(8),
                                        child: SizedBox(height: 35,width: 35,)),

                                    SizedBox(width: 10),

                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          children: [

                                            Container(
                                                decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.1), // Shadow color
                                                        blurRadius: 10, // Softness of the shadow
                                                        spreadRadius: 2, // Size of the shadow
                                                        offset: Offset(0, 4), // Position of the shadow
                                                      ),
                                                    ],
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: AppColors.white_00,
                                                    border: Border.all(color: AppColors.borderColor)
                                                ),
                                                padding: EdgeInsets.all(11),
                                                child: Image.asset("Assets/icons/ic_upload.png",width: 25,height: 25)
                                            ),

                                            SizedBox(height: 6),

                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Click to upload ',
                                                    style: textStyle.SegoeUISemiBold.copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors.mainGreen
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'or drag and drop',
                                                    style: textStyle.SegoeUI.copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors.fontGrey
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Text(
                                              "SVG, PNG, JPG or GIF (max. 800x400px)",
                                              style: textStyle.SegoeUI.copyWith(
                                                  fontSize: 12.px,
                                                  color: AppColors.fontBlack
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Email address *",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: TextFormField(
                                    controller: emailController,
                                    style: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontBlack,
                                        fontSize: 14.px
                                    ),
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      fillColor: AppColors.white_00,
                                      filled: true,
                                      hintText: "Enter email address",
                                      hintStyle: textStyle.SegoeUI.copyWith(
                                          color: AppColors.fontGrey,
                                          fontSize: 14.px
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset("Assets/icons/ic_mail.png",
                                            width: 15,height: 15,
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
                                    )
                                ),
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Phone no *",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: TextFormField(
                                    controller: phoneController,
                                    style: textStyle.SegoeUI.copyWith(
                                        color: AppColors.fontBlack,
                                        fontSize: 14.px
                                    ),
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      fillColor: AppColors.white_00,
                                      filled: true,
                                      hintText: "Enter phone number",
                                      hintStyle: textStyle.SegoeUI.copyWith(
                                          color: AppColors.fontGrey,
                                          fontSize: 14.px
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset("Assets/icons/ic_call.png",
                                            width: 15,height: 15,
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
                                    )
                                ),
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Address",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontBlack
                                  ),
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                        controller: addressController,
                                        style: textStyle.SegoeUI.copyWith(
                                            color: AppColors.fontBlack,
                                            fontSize: 14.px
                                        ),
                                        maxLines: 6,
                                        cursorHeight: 15,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          fillColor: AppColors.white_00,
                                          filled: true,
                                          hintText: "Enter address",
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
                                    Text(
                                      "275 characters left",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontGrey
                                      ),
                                    ),

                                    SizedBox(height: 15),

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: AppColors.white_00,
                                          border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: DropdownButton<String>(
                                        isDense: true,
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.fontBlack
                                        ),
                                        underline: SizedBox(),
                                        value: _selectedState,
                                        hint: Text("Select State"),
                                        isExpanded: true,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedState = newValue;  // Update the selected value
                                          });
                                        },
                                        items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Row(
                                      children: [

                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: AppColors.white_00,
                                                border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                            ),
                                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: DropdownButton<String>(
                                              isDense: true,
                                              style: textStyle.SegoeUI.copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontBlack
                                              ),
                                              underline: SizedBox(),
                                              value: _selectedCity,
                                              hint: Text("Select City"),
                                              isExpanded: true,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  _selectedCity = newValue;  // Update the selected value
                                                });
                                              },
                                              items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 10),

                                        Expanded(
                                          child: TextFormField(
                                              controller: zipController,
                                              style: textStyle.SegoeUI.copyWith(
                                                  color: AppColors.fontBlack,
                                                  fontSize: 14.px
                                              ),
                                              cursorHeight: 15,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                fillColor: AppColors.white_00,
                                                filled: true,
                                                hintText: "Zip",
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
                                        ),

                                      ],
                                    )

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Divider(
                            color: AppColors.borderColor,
                            height: 40,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Project Snaps",
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontBlack
                                      ),
                                    ),
                                    Text(
                                      "Share a few snippets of your\nproject.",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 12.px,
                                          color: AppColors.fontGrey
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 0.6.h),

                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [

                                      Container(
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.1), // Shadow color
                                                  blurRadius: 10, // Softness of the shadow
                                                  spreadRadius: 2, // Size of the shadow
                                                  offset: Offset(0, 4), // Position of the shadow
                                                ),
                                              ],
                                              borderRadius: BorderRadius.circular(10),
                                              color: AppColors.white_00,
                                              border: Border.all(color: AppColors.borderColor)
                                          ),
                                          padding: EdgeInsets.all(11),
                                          child: Image.asset("Assets/icons/ic_upload.png",width: 25,height: 25)
                                      ),

                                      SizedBox(height: 6),

                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Click to upload ',
                                              style: textStyle.SegoeUISemiBold.copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.mainGreen
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'or drag and drop',
                                              style: textStyle.SegoeUI.copyWith(
                                                  fontSize: 14.px,
                                                  color: AppColors.fontGrey
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Text(
                                        "SVG, PNG, JPG or GIF (max. 800x400px)",
                                        style: textStyle.SegoeUI.copyWith(
                                            fontSize: 12.px,
                                            color: AppColors.fontBlack
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 20.h),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
            :
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Image.asset("Assets/images/no_data.png",width: 120,height: 120,)),

              Text(
                "No zones added",
                style: textStyle.SegoeUISemiBold.copyWith(
                    fontSize: 14.px,
                    color: AppColors.fontBlack
                ),
              ),

              SizedBox(height: 0.4.h),

              Text(
                "If seems like your are yet to add a zone to your project",
                style: textStyle.SegoeUI.copyWith(
                    fontSize: 13.px,
                    color: AppColors.fontBlack
                ),
              ),

              SizedBox(height: 3.h),

              InkWell(
                onTap: () {

                  addZoneDialog();

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
                        "New Zone",
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
        )

      ],
    );
  }

  addZoneDialog() {

    TextEditingController zoneNameController = TextEditingController();
    String? _selectedZone;
    String? _zoneCount;
    String? _btu;
    String? _unitType;
    TextEditingController lineSetController = TextEditingController();


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

                            Image.asset("Assets/icons/ic_zone.png",width: 40),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.close, color: AppColors.darkBorderColor.withOpacity(0.3)),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 1.5.h),

                        Text(
                          "Add Zone",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 16.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                        SizedBox(height: 0.4.h),

                        Text(
                          "You can add systems ones the zone is created",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 14.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                        SizedBox(height: 3.h),

                        Text(
                          "Name",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                        SizedBox(height: 0.6.h),

                        TextFormField(
                            controller: zoneNameController,
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack,
                                fontSize: 14.px
                            ),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "Enter zone name",
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
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "Zone type *",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 12.px,
                                        color: AppColors.fontBlack
                                    ),
                                  ),

                                  SizedBox(height: 0.6.h),

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                    child: DropdownButton<String>(
                                      isDense: true,
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontBlack
                                      ),
                                      underline: SizedBox(),
                                      value: _selectedZone,
                                      hint: Text("Select zone type"),
                                      isExpanded: true,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedZone = newValue;  // Update the selected value
                                        });
                                      },
                                      items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "Zone Count *",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 12.px,
                                        color: AppColors.fontBlack
                                    ),
                                  ),

                                  SizedBox(height: 0.6.h),

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                    child: DropdownButton<String>(
                                      isDense: true,
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontBlack
                                      ),
                                      underline: SizedBox(),
                                      value: _zoneCount,
                                      hint: Text("Zone Count"),
                                      isExpanded: true,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _zoneCount = newValue;  // Update the selected value
                                        });
                                      },
                                      items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 2.h),

                        Row(
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "BTU",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 12.px,
                                        color: AppColors.fontBlack
                                    ),
                                  ),

                                  SizedBox(height: 0.6.h),

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                    child: DropdownButton<String>(
                                      isDense: true,
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontBlack
                                      ),
                                      underline: SizedBox(),
                                      value: _btu,
                                      hint: Text("Select BTU"),
                                      isExpanded: true,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _btu = newValue;  // Update the selected value
                                        });
                                      },
                                      items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "Unit Type",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 12.px,
                                        color: AppColors.fontBlack
                                    ),
                                  ),

                                  SizedBox(height: 0.6.h),

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.white_00,
                                        border: Border.all(color: AppColors.fontGrey.withOpacity(.4))
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                    child: DropdownButton<String>(
                                      isDense: true,
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontBlack
                                      ),
                                      underline: SizedBox(),
                                      value: _unitType,
                                      hint: Text("Select Unit Type"),
                                      isExpanded: true,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _unitType = newValue;  // Update the selected value
                                        });
                                      },
                                      items: stateNames.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 2.h),

                        Text(
                          "Lineset Length",
                          style: textStyle.SegoeUI.copyWith(
                              fontSize: 12.px,
                              color: AppColors.fontBlack
                          ),
                        ),

                        SizedBox(height: 0.6.h),

                        TextFormField(
                            controller: lineSetController,
                            style: textStyle.SegoeUI.copyWith(
                                color: AppColors.fontBlack,
                                fontSize: 14.px
                            ),
                            cursorHeight: 15,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: AppColors.white_00,
                              filled: true,
                              hintText: "Enter zone name",
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
                                      "Save",
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
            }
          );
        }).whenComplete(() {

    });
  }

}
