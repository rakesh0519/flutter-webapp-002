import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fujitsuweb/Providers/ui_providers.dart';
import 'package:fujitsuweb/Values/AppColors.dart';
import 'package:fujitsuweb/Values/Constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class UsersDetails extends StatefulWidget {
  const UsersDetails({super.key});

  @override
  State<UsersDetails> createState() => _UsersDetailsState();
}

class _UsersDetailsState extends State<UsersDetails> {
  String selected = "Profile";

  TextEditingController emailController = TextEditingController();

  List projects = [
    {
      "name": "Riverside Park",
      "company": "Summit Structures LLC",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Maplewood Development",
      "company": "Skyline Builders Inc.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Pine Valley Project",
      "company": "Blue Horizon Contractors",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Birchwood Heights",
      "company": "Ironclad Construction Services",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
    {
      "name": "Elm Street Renovations",
      "company": "Crestview Construction Corp.",
      "details": "The Riverside Park Development Project focuses on turning a "
          "15-acre site by the Crystal River into an engaging community space, "
          "complete with recreational facilities and scenic landscapes.",
      "number": "347 Zones",
      "address": "1256 Products"
    },
  ];
  final List<bool> _hovering = List.generate(13, (_) => false);

  UiProvider uiProvider = UiProvider();
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    uiProvider = Provider.of<UiProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print('--------width $width');

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: AppColors.white_00),
                      height: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(color: AppColors.white_00),
                      height: 100,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 170,
                    child: Row(
                      children: [
                        Image.asset(
                          "Assets/images/big_avatar.png",
                          width: width / 6,
                          height: height / 6,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "EcoFlow Construction",
                                  style: textStyle.SegoeUISemiBold.copyWith(
                                      fontSize: 20.px,
                                      color: AppColors.fontLightBlack),
                                ),
                                Text(
                                  "@EcoFlow",
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 14.px,
                                      color: AppColors.fontGrey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffD5D7DA),
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
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
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              InkWell(
                hoverColor: AppColors.white_00,
                splashColor: AppColors.white_00,
                onTap: () {
                  setState(() {
                    selected = "Profile";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == "Profile"
                          ? AppColors.selectColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 10),
                  child: Text(
                    "Profile",
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
                    selected = "Projects";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == "Projects"
                          ? AppColors.selectColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 10),
                  child: Text(
                    "Projects",
                    style: textStyle.SegoeUISemiBold.copyWith(
                        fontSize: 12.px, color: AppColors.selectIconColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          selected == "Profile"
              ? width > 1101
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "About me",
                                style: textStyle.SegoeUISemiBold.copyWith(
                                    fontSize: 14.px,
                                    color: AppColors.fontLightBlack),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                width: 500,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I’m a Construction Builder based in Melbourne, Australia. I take pride in crafting innovative structures, managing construction projects, and ensuring quality workmanship, all while keeping a light-hearted approach.I’ve collaborated with some of the most dynamic companies in the industry, including EcoBuild, Urban Developments, and Future Homes. My passion lies in helping clients realize their visions, enhancing their spaces, and navigating the complexities of construction with ease.My projects have been showcased in Builder's Digest, Construction Today, and Architectural Review, highlighting my commitment to excellence and creativity in every build.",
                                      style: textStyle.SegoeUI.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontGrey),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "Assets/icons/ic_x.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "Assets/icons/ic_linkedin.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "Assets/icons/ic_github.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "Assets/icons/ic_boll.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "Assets/icons/ic_figma.png",
                                      width: 20,
                                      height: 20,
                                    )
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(height: 32.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 2, child: SizedBox()),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                    color: AppColors.lightBg,
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 8.0),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "Assets/icons/ic_au.png",
                                              width: 20,
                                              height: 20,
                                            ),
                                            SizedBox(width: 8.0),
                                            Text(
                                              'Melbourne, Australia',
                                              style: TextStyle(
                                                  color: AppColors.fontGrey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Website',
                                          style: TextStyle(
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('rileyomoore.com',
                                            style: TextStyle(
                                                color: AppColors.darkGreen)),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Portfolio',
                                          style: TextStyle(
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('@riley',
                                            style: TextStyle(
                                                color: AppColors.darkGreen)),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                              color: AppColors.fontGrey),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('hello@rileyomoore.com',
                                            style: TextStyle(
                                                color: AppColors.darkGreen)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.borderColor,
                          height: 40,
                        ),
                        Text(
                          'Projects',
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "Assets/icons/ic_x.png",
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                "Assets/icons/ic_linkedin.png",
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                "Assets/icons/ic_github.png",
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                "Assets/icons/ic_boll.png",
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                "Assets/icons/ic_figma.png",
                                width: 20,
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          "About me",
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        ),
                        SizedBox(
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "I’m a Construction Builder based in Melbourne, Australia. I take pride in crafting innovative structures, managing construction projects, and ensuring quality workmanship, all while keeping a light-hearted approach.I’ve collaborated with some of the most dynamic companies in the industry, including EcoBuild, Urban Developments, and Future Homes. My passion lies in helping clients realize their visions, enhancing their spaces, and navigating the complexities of construction with ease.My projects have been showcased in Builder's Digest, Construction Today, and Architectural Review, highlighting my commitment to excellence and creativity in every build.",
                                style: textStyle.SegoeUI.copyWith(
                                    fontSize: 14.px, color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(height: 32.0),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: AppColors.lightBg,
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6.0),
                              Row(
                                children: [
                                  Image.asset(
                                    "Assets/icons/ic_au.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'Melbourne, Australia',
                                    style: TextStyle(color: AppColors.fontGrey),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                'Website',
                                style: TextStyle(color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6.0),
                              Text('rileyomoore.com',
                                  style: TextStyle(color: AppColors.darkGreen)),
                              SizedBox(height: 12.0),
                              Text(
                                'Portfolio',
                                style: TextStyle(color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6.0),
                              Text('@riley',
                                  style: TextStyle(color: AppColors.darkGreen)),
                              SizedBox(height: 12.0),
                              Text(
                                'Email',
                                style: TextStyle(color: AppColors.fontGrey),
                              ),
                              SizedBox(height: 6.0),
                              Text('hello@rileyomoore.com',
                                  style: TextStyle(color: AppColors.darkGreen)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.borderColor,
                          height: 40,
                        ),
                        Text(
                          'Projects',
                          style: textStyle.SegoeUISemiBold.copyWith(
                              fontSize: 14.px, color: AppColors.fontLightBlack),
                        )
                      ],
                    )
              : MasonryGridView.count(
                  shrinkWrap: true,
                  itemCount: projects.length,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: _getGridCrossAxisCount(context),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MouseRegion(
                        onEnter: (_) => setState(() => _hovering[index] = true),
                        onExit: (_) => setState(() => _hovering[index] = false),
                        child: InkWell(
                          hoverColor: AppColors.white_00,
                          onTap: () {
                            uiProvider.changeAdminPage("User_Projects_Details");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: _hovering[index]
                                        ? Colors.black.withOpacity(0.1)
                                        : AppColors.white_00,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                border: Border.all(
                                    color: _hovering[index]
                                        ? AppColors.mainGreen
                                        : AppColors.borderColor),
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.white_00),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: AppColors.white_00,
                                            border: Border.all(
                                                color: AppColors.borderColor)),
                                        padding: EdgeInsets.all(8),
                                        child: SizedBox(
                                          height: 25,
                                          width: 25,
                                        )),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            projects[index]["name"],
                                            style: textStyle.SegoeUISemiBold
                                                .copyWith(
                                                    fontSize: 14.px,
                                                    color: AppColors.fontBlack),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            projects[index]["company"],
                                            style: textStyle.SegoeUI.copyWith(
                                                fontSize: 14.px,
                                                color:
                                                    AppColors.fontLightBlack),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Text(
                                  projects[index]["details"],
                                  maxLines: 3,
                                  style: textStyle.SegoeUI.copyWith(
                                      fontSize: 12.px,
                                      color: AppColors.fontLightBlack),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Image.asset(
                                          "Assets/icons/ic_message.png",
                                          width: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      projects[index]["number"],
                                      maxLines: 1,
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          fontSize: 14.px,
                                          color: AppColors.fontGrey),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 2.0,
                                          bottom: 1.0,
                                          left: 10.0,
                                          right: 10.0),
                                      decoration: BoxDecoration(
                                          color: AppColors.neonBack,
                                          border: Border.all(
                                              color: Color(0xff64F2FF)),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                            color: AppColors.mainGreen),
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
                                      child: Image.asset(
                                          "Assets/icons/ic_address.png",
                                          width: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      projects[index]["address"],
                                      maxLines: 1,
                                      style: textStyle.SegoeUISemiBold.copyWith(
                                          //fontWeight: FontWeight.w400,
                                          fontSize: 14.px,
                                          color: AppColors.fontGrey),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 2.0,
                                          bottom: 1.0,
                                          left: 10.0,
                                          right: 10.0),
                                      decoration: BoxDecoration(
                                          color: AppColors.neonBack,
                                          border: Border.all(
                                              color: Color(0xff64F2FF)),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Text(
                                        '25',
                                        style: TextStyle(
                                            color: AppColors.mainGreen),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 36,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: AppColors.white_00,
                                              border: Border.all(
                                                  color: AppColors
                                                      .darkBorderColor
                                                      .withOpacity(0.3))),
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Center(
                                            child: Text(
                                              "View Details",
                                              style: textStyle.SegoeUISemiBold
                                                  .copyWith(
                                                      fontSize: 14.px,
                                                      color: AppColors
                                                          .fontLightBlack),
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.white_00,
                                          border: Border.all(
                                              color: AppColors.darkBorderColor
                                                  .withOpacity(0.3))),
                                      child: Center(
                                          child: Image.asset(
                                              "Assets/icons/ic_share.png",
                                              width: 20)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )

          // Expanded(
          //     child: Scrollbar(
          //       controller: scrollController,
          //       thumbVisibility: true,
          //       child: GridView.builder(
          //         controller: scrollController,
          //         itemCount: projects.length,
          //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 4,
          //             childAspectRatio: 1.13,
          //             mainAxisSpacing: 10,
          //             crossAxisSpacing: 10),
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: MouseRegion(
          //               onEnter: (_) =>
          //                   setState(() => _hovering[index] = true),
          //               onExit: (_) =>
          //                   setState(() => _hovering[index] = false),
          //               child: InkWell(
          //                 hoverColor: AppColors.white_00,
          //                 onTap: () {
          //                   uiProvider
          //                       .changeAdminPage("User_Projects_Details");
          //                 },
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                       boxShadow: [
          //                         BoxShadow(
          //                           color: _hovering[index]
          //                               ? Colors.black.withOpacity(0.1)
          //                               : AppColors.white_00,
          //                           blurRadius: 10,
          //                           spreadRadius: 2,
          //                           offset: Offset(0, 4),
          //                         ),
          //                       ],
          //                       border: Border.all(
          //                           color: _hovering[index]
          //                               ? AppColors.mainGreen
          //                               : AppColors.borderColor),
          //                       borderRadius: BorderRadius.circular(16),
          //                       color: AppColors.white_00),
          //                   padding: EdgeInsets.all(20),
          //                   child: Column(
          //                     children: [
          //                       Row(
          //                         children: [
          //                           Container(
          //                               decoration: BoxDecoration(
          //                                   borderRadius:
          //                                       BorderRadius.circular(30),
          //                                   color: AppColors.white_00,
          //                                   border: Border.all(
          //                                       color:
          //                                           AppColors.borderColor)),
          //                               padding: EdgeInsets.all(8),
          //                               child: SizedBox(
          //                                 height: 25,
          //                                 width: 25,
          //                               )),
          //                           SizedBox(width: 10),
          //                           Column(
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.start,
          //                             children: [
          //                               Text(
          //                                 projects[index]["name"],
          //                                 style: textStyle.SegoeUISemiBold
          //                                     .copyWith(
          //                                         fontSize: 14.px,
          //                                         color:
          //                                             AppColors.fontBlack),
          //                               ),
          //                               Text(
          //                                 projects[index]["company"],
          //                                 style: textStyle.SegoeUI.copyWith(
          //                                     fontSize: 14.px,
          //                                     color:
          //                                         AppColors.fontLightBlack),
          //                               ),
          //                             ],
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(height: 15),
          //                       Text(
          //                         projects[index]["details"],
          //                         maxLines: 3,
          //                         style: textStyle.SegoeUI.copyWith(
          //                             fontSize: 12.px,
          //                             color: AppColors.fontLightBlack),
          //                       ),
          //                       SizedBox(height: 15),
          //                       Row(
          //                         crossAxisAlignment:
          //                             CrossAxisAlignment.start,
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.start,
          //                         children: [
          //                           Padding(
          //                             padding:
          //                                 const EdgeInsets.only(top: 2),
          //                             child: Image.asset(
          //                                 "Assets/icons/ic_message.png",
          //                                 width: 20),
          //                           ),
          //                           SizedBox(width: 8),
          //                           Text(
          //                             projects[index]["number"],
          //                             maxLines: 1,
          //                             style: textStyle.SegoeUISemiBold
          //                                 .copyWith(
          //                                     fontSize: 14.px,
          //                                     color: AppColors.fontGrey),
          //                           ),
          //                           SizedBox(width: 8),
          //                           Container(
          //                             padding: EdgeInsets.only(
          //                                 top: 3.0,
          //                                 bottom: 3.0,
          //                                 left: 5.0,
          //                                 right: 5.0),
          //                             decoration: BoxDecoration(
          //                                 color: AppColors.neonBack,
          //                                 border: Border.all(
          //                                     color: Color(0xff64F2FF)),
          //                                 borderRadius:
          //                                     BorderRadius.circular(12.0)),
          //                             child: Text('3'),
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(height: 5),
          //                       Row(
          //                         crossAxisAlignment:
          //                             CrossAxisAlignment.start,
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.start,
          //                         children: [
          //                           Padding(
          //                             padding:
          //                                 const EdgeInsets.only(top: 2),
          //                             child: Image.asset(
          //                                 "Assets/icons/ic_address.png",
          //                                 width: 20),
          //                           ),
          //                           SizedBox(width: 8),
          //                           Text(
          //                             projects[index]["address"],
          //                             maxLines: 1,
          //                             style: textStyle.SegoeUISemiBold
          //                                 .copyWith(
          //                                     //fontWeight: FontWeight.w400,
          //                                     fontSize: 14.px,
          //                                     color: AppColors.fontGrey),
          //                           ),
          //                           SizedBox(width: 8),
          //                           Container(
          //                             padding: EdgeInsets.only(
          //                                 top: 3.0,
          //                                 bottom: 3.0,
          //                                 left: 5.0,
          //                                 right: 5.0),
          //                             decoration: BoxDecoration(
          //                                 color: AppColors.neonBack,
          //                                 border: Border.all(
          //                                     color: Color(0xff64F2FF)),
          //                                 borderRadius:
          //                                     BorderRadius.circular(12.0)),
          //                             child: Text('25'),
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(height: 15),
          //                       Row(
          //                         children: [
          //                           Expanded(
          //                             child: InkWell(
          //                               onTap: () {},
          //                               child: Container(
          //                                 height: 36,
          //                                 decoration: BoxDecoration(
          //                                     borderRadius:
          //                                         BorderRadius.circular(8),
          //                                     color: AppColors.white_00,
          //                                     border: Border.all(
          //                                         color: AppColors
          //                                             .darkBorderColor
          //                                             .withOpacity(0.3))),
          //                                 padding:
          //                                     EdgeInsets.only(bottom: 2),
          //                                 child: Center(
          //                                   child: Text(
          //                                     "View Details",
          //                                     style: textStyle
          //                                             .SegoeUISemiBold
          //                                         .copyWith(
          //                                             fontSize: 14.px,
          //                                             color: AppColors
          //                                                 .fontLightBlack),
          //                                   ),
          //                                 ),
          //                               ),
          //                             ),
          //                           ),
          //                           SizedBox(width: 10),
          //                           Container(
          //                             height: 36,
          //                             width: 36,
          //                             decoration: BoxDecoration(
          //                                 borderRadius:
          //                                     BorderRadius.circular(8),
          //                                 color: AppColors.white_00,
          //                                 border: Border.all(
          //                                     color: AppColors
          //                                         .darkBorderColor
          //                                         .withOpacity(0.3))),
          //                             child: Center(
          //                                 child: Image.asset(
          //                                     "Assets/icons/ic_share.png",
          //                                     width: 20)),
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   )
        ],
      ),
    );
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
