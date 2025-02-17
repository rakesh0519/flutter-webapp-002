import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';

class Systems extends StatefulWidget {
  const Systems({super.key});

  @override
  State<Systems> createState() => _SystemsState();
}

class _SystemsState extends State<Systems> {
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

    return Expanded(
        child: isZoneAdded == false
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                ? Image.asset(
                                    "Assets/icons/ic_edit.png",
                                    width: 26.0,
                                  )
                                : SizedBox.shrink(),
                            SizedBox(width: 10),
                            width > 615
                                ? Image.asset(
                                    "Assets/icons/ic_delete.png",
                                    width: 20,
                                  )
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
                              Image.asset(
                                "Assets/icons/ic_edit.png",
                                width: 26,
                              ),
                              SizedBox(width: 10),
                              Image.asset(
                                "Assets/icons/ic_delete.png",
                                width: 20,
                              )
                            ],
                          )
                        : SizedBox.shrink(),
                    Divider(
                      color: AppColors.borderColor,
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2 - 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "No systems added found",
                            style: textStyle.SegoeUISemiBold.copyWith(
                                fontSize: 14.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(height: 0.4.h),
                          Text(
                            "you are yet to add system to this zone of your project.",
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 13.px, color: AppColors.fontBlack),
                          ),
                          SizedBox(height: 3.h),
                          InkWell(
                            onTap: () {
                              uiProvider.changeDashboardPage("Add_Systems");
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
                                    "New System",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.white_00),
                                  ),
                                  SizedBox(width: 1.w)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2. Zone Name",
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                        style:
                                            textStyle.SegoeUISemiBold.copyWith(
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
                                ? Image.asset(
                                    "Assets/icons/ic_edit.png",
                                    width: 26,
                                  )
                                : SizedBox.shrink(),
                            SizedBox(width: 10),
                            width > 615
                                ? Image.asset(
                                    "Assets/icons/ic_delete.png",
                                    width: 20,
                                  )
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
                              Image.asset(
                                "Assets/icons/ic_edit.png",
                                width: 26,
                              ),
                              SizedBox(width: 10),
                              Image.asset(
                                "Assets/icons/ic_delete.png",
                                width: 20,
                              )
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
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.only(
                                  top: 80.0,
                                  left: 20.0,
                                  bottom: 20.0,
                                  right: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Airstage U-Series",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.darkGreen),
                                  ),
                                  Text(
                                    "FusionWave 2",
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 24.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    "25000 BTU Ceiling-Mounted Air Setup "
                                    "\n R-290 High-Efficiency Cooling Technology "
                                    "\nPremier Air Quality Management System",
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 12.px,
                                        color: AppColors.fontLightBlack),
                                  ),
                                  SizedBox(height: 1.h),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 36,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: AppColors.neonBorder)),
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
                                                style: textStyle.SegoeUISemiBold
                                                    .copyWith(
                                                        fontSize: 14.px,
                                                        color: AppColors
                                                            .mainGreen),
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
                                    onTap: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 36,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: AppColors.borderColor)),
                                      child: Center(
                                        child: Text(
                                          "View Details",
                                          style: textStyle.SegoeUISemiBold
                                              .copyWith(
                                                  fontSize: 14.px,
                                                  color:
                                                      AppColors.fontLightBlack),
                                        ),
                                      ),
                                    ),
                                  ),
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
              ));
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
