import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Values/AppColors.dart';
import '../../../../../Values/Constants.dart';


class Systems extends StatefulWidget {
  const Systems({super.key});

  @override
  State<Systems> createState() => _SystemsState();
}

class _SystemsState extends State<Systems> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
        isZoneAdded == false
            ?
        Column(
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
        )
            :
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "1. Zone Name",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px,
                              color: AppColors.darkGreen
                          ),
                        ),

                        Row(
                          children: [

                            Text(
                              "Zone type",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": J-Series",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "BTU",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 23",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "Unit Type",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 23",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "Lineset length",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 1000",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),



                          ],
                        )

                      ],
                    ),
                  ),

                  Image.asset(
                      "Assets/icons/ic_edit.png", width: 38, height: 38
                  ),

                  SizedBox(width: 10),

                  Image.asset(
                      "Assets/icons/ic_delete.png", width: 38, height: 38
                  ),

                ],
              ),

              Divider(
                color: AppColors.borderColor,
                height: 30,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2 - 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      "No systems added found",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.4.h),

                    Text(
                      "you are yet to add system to this zone of your project.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 13.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {


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
                              "New System",
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
              ),

              Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "2. Zone Name",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px,
                              color: AppColors.darkGreen
                          ),
                        ),

                        Row(
                          children: [

                            Text(
                              "Zone type",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": J-Series",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "BTU",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 23",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "Unit Type",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 23",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "  |  ",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),

                            Text(
                              "Lineset length",
                              style: textStyle.SegoeUISemiBold.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.darkGreen
                              ),
                            ),

                            Text(
                              ": 1000",
                              style: textStyle.SegoeUI.copyWith(
                                  fontSize: 12.px,
                                  color: AppColors.fontGrey
                              ),
                            ),



                          ],
                        )

                      ],
                    ),
                  ),

                  Image.asset(
                      "Assets/icons/ic_edit.png", width: 38, height: 38
                  ),

                  SizedBox(width: 10),

                  Image.asset(
                      "Assets/icons/ic_delete.png", width: 38, height: 38
                  ),

                ],
              ),

              Divider(
                color: AppColors.borderColor,
                height: 30,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2 - 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      "No systems added found",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.4.h),

                    Text(
                      "you are yet to add system to this zone of your project.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 13.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    InkWell(
                      onTap: () {


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
                              "New System",
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
              ),

            ],
          ),
        )
    );
  }

  bool isZoneAdded = false;
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
                                    setState((){
                                      isZoneAdded = true;
                                    });

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
      setState(() {

      });
    });
  }

}
