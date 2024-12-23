import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:sizer/sizer.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  List projects = [
    {
      "name" : "Riverside Park",
      "company" : "Summit Structures LLC",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Maplewood Development",
      "company" : "Skyline Builders Inc.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Pine Valley Project",
      "company" : "Blue Horizon Contractors",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Birchwood Heights",
      "company" : "Ironclad Construction Services",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },

    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
    {
      "name" : "Elm Street Renovations",
      "company" : "Crestview Construction Corp.",
      "details" : "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number" : "(123) 456-7890",
      "address" : "456 Maple Street, Springfield, IL"
    },
  ];

  ScrollController scrollController = ScrollController();
  final List<bool> _hovering = List.generate(13, (_) => false);

  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
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
                    "Projects",
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
                "Assets/icons/ic_filter.png", width: 38, height: 38
            ),

            SizedBox(width: 0.6.w),

            Image.asset(
                "Assets/icons/ic_add.png", width: 38, height: 38
            ),

            SizedBox(width: 0.6.w),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
              ),
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [

                  Image.asset(
                    "Assets/icons/ic_search.png", width: 23, height: 23,color: AppColors.unselectIconColor,
                  ),

                  SizedBox(width: 0.6.w),

                  Text(
                    "Search",
                    style: textStyle.SegoeUI.copyWith(
                        fontSize: 16.px,
                        color: AppColors.unselectIconColor
                    ),
                  ),

                  SizedBox(width:18.w),

                ],
              ),
            ),

            SizedBox(width: 0.6.w),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
              ),
              height: 40,
              child: Row(
                children: [

                  InkWell(
                    splashColor: AppColors.white_00,
                    hoverColor: AppColors.white_00,
                    onTap: () {

                      setState(() {
                        isGridView = true;
                      });

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "Assets/icons/ic_grid.png",
                        width: 20, height: 20,
                        color: isGridView == true ? AppColors.mainGreen : AppColors.selectIconColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                    width: 2,
                    child: VerticalDivider(
                      color: AppColors.darkBorderColor.withOpacity(0.3),
                    ),
                  ),

                  InkWell(
                    splashColor: AppColors.white_00,
                    hoverColor: AppColors.white_00,
                    onTap: () {

                      setState(() {
                        isGridView = false;
                      });

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "Assets/icons/ic_list.png",
                        width: 20, height: 20,
                        color: isGridView == false ? AppColors.mainGreen : AppColors.selectIconColor,
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),

        SizedBox(height: 3.h),

        projects.isNotEmpty
            ?
        isGridView == true
            ?
        Expanded(
          child: Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: GridView.builder(
              controller: scrollController,
              itemCount: projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.13,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MouseRegion(
                    onEnter: (_) => setState(() => _hovering[index] = true),
                    onExit: (_) => setState(() => _hovering[index] = false),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: _hovering[index] ? Colors.black.withOpacity(0.1) : AppColors.white_00, // Shadow color
                              blurRadius: 10, // Softness of the shadow
                              spreadRadius: 2, // Size of the shadow
                              offset: Offset(0, 4), // Position of the shadow
                            ),
                          ],
                          border: Border.all(
                              color: _hovering[index] ? AppColors.mainGreen : AppColors.borderColor
                          ),
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.white_00

                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [

                          Row(
                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColors.white_00,
                                      border: Border.all(color: AppColors.borderColor)
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: SizedBox(height: 25,width: 25,)),

                              SizedBox(width: 10),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    projects[index]["name"],
                                    style: textStyle.SegoeUISemiBold.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontBlack
                                    ),
                                  ),

                                  Text(
                                    projects[index]["company"],
                                    style: textStyle.SegoeUI.copyWith(
                                        fontSize: 14.px,
                                        color: AppColors.fontLightBlack
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),

                          SizedBox(height: 15),

                          Text(
                            projects[index]["details"],
                            maxLines: 3,
                            style: textStyle.SegoeUI.copyWith(
                                fontSize: 12.px,
                                color: AppColors.fontLightBlack
                            ),
                          ),

                          SizedBox(height: 15),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Image.asset("Assets/icons/ic_message.png",width: 20),
                              ),

                              SizedBox(width: 8),

                              Text(
                                projects[index]["number"],
                                maxLines: 1,
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontGrey
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 5),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Image.asset("Assets/icons/ic_address.png",width: 20),
                              ),

                              SizedBox(width: 8),

                              Text(
                                projects[index]["address"],
                                maxLines: 1,
                                style: textStyle.SegoeUISemiBold.copyWith(
                                  //fontWeight: FontWeight.w400,
                                    fontSize: 14.px,
                                    color: AppColors.fontGrey
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 15),

                          Row(
                            children: [

                              Expanded(
                                child: InkWell(
                                  onTap: () {


                                  },
                                  child: Container(
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.white_00,
                                        border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
                                    ),
                                    padding: EdgeInsets.only(bottom: 2),
                                    child: Center(
                                      child: Text(
                                        "View Details",
                                        style: textStyle.SegoeUISemiBold.copyWith(
                                            fontSize: 14.px,
                                            color: AppColors.fontLightBlack
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.white_00,
                                    border: Border.all(color: AppColors.darkBorderColor.withOpacity(0.3))
                                ),
                                child: Center(child: Image.asset("Assets/icons/ic_share.png",width: 20)),
                              ),

                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
            :
        Expanded(child: SizedBox())
            :
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Image.asset("Assets/images/no_data.png",width: 120,height: 120,)),

              Text(
                "No project found",
                style: textStyle.SegoeUISemiBold.copyWith(
                    fontSize: 14.px,
                    color: AppColors.fontBlack
                ),
              ),

              SizedBox(height: 0.4.h),

              Text(
                "You are yet to create your first project",
                style: textStyle.SegoeUI.copyWith(
                    fontSize: 13.px,
                    color: AppColors.fontBlack
                ),
              ),

              SizedBox(height: 3.h),

              InkWell(
                onTap: () {

                  projectDialog();

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
                        "New project",
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

  projectDialog() {

    TextEditingController projectNameController = TextEditingController();

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(12.0)), //this right here
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

                        Image.asset("Assets/icons/ic_folder.png",width: 40),
                        Spacer(),
                        Icon(Icons.close, color: AppColors.darkBorderColor.withOpacity(0.3))

                      ],
                    ),

                    SizedBox(height: 2.h),

                    Text(
                      "Project created",
                      style: textStyle.SegoeUISemiBold.copyWith(
                          fontSize: 16.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.4.h),

                    Text(
                      "Please enter a name for this project.",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 14.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      "Project name",
                      style: textStyle.SegoeUI.copyWith(
                          fontSize: 12.px,
                          color: AppColors.fontBlack
                      ),
                    ),

                    SizedBox(height: 0.6.h),

                    TextFormField(
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
                          hintText: "eg. New Skyline",
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
                                  "Confirm",
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
        }).whenComplete(() {

    });
  }

}
