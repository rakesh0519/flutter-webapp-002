import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AdminSystemsScreen extends StatefulWidget {
  const AdminSystemsScreen({super.key});

  @override
  State<AdminSystemsScreen> createState() => _AdminSystemsScreenState();
}

class _AdminSystemsScreenState extends State<AdminSystemsScreen> {
  UiProvider uiProvider = UiProvider();
  List projects = [
    {
      "name": "AIRSTAGE H-Series",
      "subName": "NovaTech 6",
      "Quantity": "Quantity: 32",
      "high_value": true,
    },
    {
      "name": "AIRSTAGE H-Series",
      "subName": "NovaTech 6",
      "Quantity": "Quantity: 32",
      "high_value": false,
    },
  ];
  @override
  void initState() {
    super.initState();

    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    uiProvider = Provider.of<UiProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;

    return isZoneAdded == false
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                "Assets/images/no_data.png",
                width: 120,
                height: 120,
              )),
              Text(
                "No zones added",
                style: textStyle.SegoeUISemiBold.copyWith(
                    fontSize: 14.px, color: AppColors.fontBlack),
              ),
              SizedBox(height: 0.4.h),
              Text(
                "If seems like your are yet to add a zone to your project",
                style: textStyle.SegoeUI.copyWith(
                    fontSize: 13.px, color: AppColors.fontBlack),
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
                      Image.asset("Assets/icons/ic_add.png",
                          width: 38, height: 38),
                      Text(
                        "New Zone",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.white_00),
                      ),
                      SizedBox(width: 1.w)
                    ],
                  ),
                ),
              ),
            ],
          )
        : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. Zone Name",
                            style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px,
                              color: AppColors.darkGreen,
                            ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 4.0,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Zone type",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": J-Series",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "BTU",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 23",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Unit Type",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 23",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Lineset length",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 1000",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        width > 615
                            ? InkWell(
                                onTap: () {
                                  upLoadFileDialog();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.neonBorder),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "Assets/icons/ic_notes_new.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        SizedBox(width: 10),
                        width > 615
                            ? Image.asset("Assets/icons/ic_block.png",
                                width: 20, height: 20)
                            : SizedBox.shrink(),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                width < 615
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () {
                              upLoadFileDialog();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.neonBorder),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "Assets/icons/ic_notes_new.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset("Assets/icons/ic_block.png",
                              width: 20, height: 20)
                        ],
                      )
                    : SizedBox.shrink(),
                Divider(
                  color: AppColors.borderColor,
                  height: 30,
                ),
                MasonryGridView.count(
                  shrinkWrap: true,
                  itemCount: projects.length,
                  crossAxisCount: _getGridCrossAxisCount(context),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 12,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          border: Border.all(color: AppColors.mainGreen),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 70.0, left: 20.0, bottom: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projects[index]["name"],
                              style: TextStyle(color: AppColors.darkGreen),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              projects[index]["subName"],
                              style: TextStyle(
                                  color: AppColors.fontLightBlack,
                                  fontSize: 22.0),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              projects[index]["Quantity"],
                              style: TextStyle(
                                  color: AppColors.fontLightBlack,
                                  fontSize: 12.0),
                            ),
                            SizedBox(height: 5.0),
                            projects[index]["high_value"] == true
                                ? Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.backRed,
                                        border: Border.all(
                                            color: AppColors.borderRed),
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Hig Priority',
                                        style: TextStyle(
                                            color: AppColors.fontRed,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. Zone Name",
                            style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px,
                              color: AppColors.darkGreen,
                            ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 4.0,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Zone type",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": J-Series",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "BTU",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 23",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Unit Type",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 23",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "  |  ",
                                style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Lineset length",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.darkGreen,
                                    ),
                                  ),
                                  Text(
                                    ": 1000",
                                    style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        width > 615
                            ? InkWell(
                                onTap: () {
                                  upLoadFileDialog();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.neonBorder),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "Assets/icons/ic_notes_new.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        SizedBox(width: 10),
                        width > 615
                            ? Image.asset("Assets/icons/ic_block.png",
                                width: 20, height: 20)
                            : SizedBox.shrink(),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                width < 615
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () {
                              upLoadFileDialog();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.neonBorder),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "Assets/icons/ic_notes_new.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset("Assets/icons/ic_block.png",
                              width: 20, height: 20)
                        ],
                      )
                    : SizedBox.shrink(),
                Divider(
                  color: AppColors.borderColor,
                  height: 30,
                ),
                MasonryGridView.count(
                  shrinkWrap: true,
                  itemCount: projects.length,
                  crossAxisCount: _getGridCrossAxisCount(context),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 12,
                  itemBuilder: (context, index) {
                    double screenWidth = MediaQuery.of(context).size.width;

                    return Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: screenWidth,
                          margin: EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.only(
                              top: 80.0, left: 20.0, bottom: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AIRSTAGE H-Series',
                                style: TextStyle(color: AppColors.darkGreen),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'NovaTech 6',
                                style: TextStyle(
                                    color: AppColors.fontLightBlack,
                                    fontSize: 22.0),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Quantity: 32',
                                style: TextStyle(
                                    color: AppColors.fontLightBlack,
                                    fontSize: 12.0),
                              ),
                              SizedBox(height: 5.0),
                              projects[index]["high_value"] == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.backRed,
                                          border: Border.all(
                                              color: AppColors.borderRed),
                                          borderRadius:
                                              BorderRadius.circular(16.0)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Hig Priority',
                                          style: TextStyle(
                                              color: AppColors.fontRed,
                                              fontSize: 12.0),
                                        ),
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50,
                          child: Image.asset(
                            "Assets/images/image_1.png",
                            height: 150,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
  }

  bool isZoneAdded = true;
  List<String> stateNames = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

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
                          Image.asset("Assets/icons/ic_zone.png", width: 40),
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
                        "Add Zone",
                        style: textStyle.SegoeUISemiBold.copyWith(
                            fontSize: 16.px, color: AppColors.fontBlack),
                      ),
                      SizedBox(height: 0.4.h),
                      Text(
                        "You can add systems ones the zone is created",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 14.px, color: AppColors.fontBlack),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Name",
                        style: textStyle.SegoeUI.copyWith(
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                      SizedBox(height: 0.6.h),
                      TextFormField(
                          controller: zoneNameController,
                          style: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontBlack, fontSize: 14.px),
                          cursorHeight: 15,
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.white_00,
                            filled: true,
                            hintText: "Enter zone name",
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
                                      color: AppColors.fontBlack),
                                ),
                                SizedBox(height: 0.6.h),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.white_00,
                                      border: Border.all(
                                          color: AppColors.fontGrey
                                              .withOpacity(.4))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack),
                                    underline: SizedBox(),
                                    value: _selectedZone,
                                    hint: Text("Select zone type"),
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedZone = newValue;
                                      });
                                    },
                                    items: stateNames
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
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
                                      color: AppColors.fontBlack),
                                ),
                                SizedBox(height: 0.6.h),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.white_00,
                                      border: Border.all(
                                          color: AppColors.fontGrey
                                              .withOpacity(.4))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack),
                                    underline: SizedBox(),
                                    value: _zoneCount,
                                    hint: Text("Zone Count"),
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _zoneCount = newValue;
                                      });
                                    },
                                    items: stateNames
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
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
                                      color: AppColors.fontBlack),
                                ),
                                SizedBox(height: 0.6.h),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.white_00,
                                      border: Border.all(
                                          color: AppColors.fontGrey
                                              .withOpacity(.4))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack),
                                    underline: SizedBox(),
                                    value: _btu,
                                    hint: Text("Select BTU"),
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _btu = newValue;
                                      });
                                    },
                                    items: stateNames
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
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
                                      color: AppColors.fontBlack),
                                ),
                                SizedBox(height: 0.6.h),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.white_00,
                                      border: Border.all(
                                          color: AppColors.fontGrey
                                              .withOpacity(.4))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack),
                                    underline: SizedBox(),
                                    value: _unitType,
                                    hint: Text("Select Unit Type"),
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _unitType = newValue;
                                      });
                                    },
                                    items: stateNames
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
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
                            fontSize: 12.px, color: AppColors.fontBlack),
                      ),
                      SizedBox(height: 0.6.h),
                      TextFormField(
                          controller: lineSetController,
                          style: textStyle.SegoeUI.copyWith(
                              color: AppColors.fontBlack, fontSize: 14.px),
                          cursorHeight: 15,
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.white_00,
                            filled: true,
                            hintText: "Enter zone name",
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
                              onTap: () {
                                Navigator.pop(context);
                                setState(() {
                                  isZoneAdded = true;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.mainGreen),
                                child: Center(
                                  child: Text(
                                    "Save",
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

  upLoadFileDialog() {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Upload and attach files",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 16.px,
                                    color: AppColors.fontBlack),
                              ),
                              SizedBox(height: 6.0),
                              Text(
                                'Upload and attach files to this project.',
                                style: TextStyle(
                                  color: AppColors.unselectIconColor,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.close,
                              color: AppColors.darkBorderColor.withOpacity(0.3))
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.borderColor)),
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
                                  width: 25, height: 25),
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Column(
                                  children: [
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
                                Spacer(),
                                Image.asset("Assets/icons/ic_file.png",
                                    width: 40, height: 40),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              border: Border.all(
                                color: Color(0xffD5D7DA),
                              ),
                              borderRadius: BorderRadius.circular(12.0)),
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'Assets/icons/ic_pdf.png',
                                    height: 40.0,
                                    width: 40.0,
                                  ),
                                  SizedBox(width: 12.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tech design requirements.pdf',
                                        style: TextStyle(
                                          color: AppColors.fontLightBlack,
                                        ),
                                      ),
                                      Text(
                                        '200 KB',
                                        style: TextStyle(
                                          color: AppColors.unselectIconColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    'Assets/icons/ic_checkbox_fill.png',
                                    height: 16.0,
                                    width: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  SizedBox(width: 12.0),
                                  Expanded(
                                    child: Container(
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: AppColors.mainGreen,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12.0),
                                  Text(
                                    '100%',
                                    style: TextStyle(
                                      color: AppColors.unselectIconColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      SizedBox(height: 30.0),
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
                          SizedBox(width: 1.w),
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
          });
        }).whenComplete(() {
      setState(() {});
    });
  }

  int _getGridCrossAxisCount(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width >= 1500) {
      return 5;
    } else if (width >= 1200) {
      return 4;
    } else if (width >= 900) {
      return 3;
    } else if (width >= 600) {
      return 2;
    } else {
      return 1;
    }
  }
}
