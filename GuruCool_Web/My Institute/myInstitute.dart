import 'package:flutter/material.dart';
import 'package:institute/Widgets/studentDialogBox.dart';
import 'Utils/sizeConfig.dart';

class MyInstitute extends StatelessWidget {
  final String instituteName;
  final String name;
  final String address;
  final String totalStudents;
  final String totalTeachers;
  final String email;

  MyInstitute({
    @required this.instituteName,
    @required this.name,
    @required this.address,
    @required this.totalStudents,
    @required this.totalTeachers,
    @required this.email,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: SizeConfig.screenWidth * 683 / 1440,
                height: SizeConfig.screenHeight,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: SizeConfig.screenWidth * 31 / 1440,
                      child: Container(
                        width: SizeConfig.screenWidth * 614 / 1440,
                        height: SizeConfig.screenHeight * 624 / 900,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                SizeConfig.screenHeight * 8 / 900),
                            topRight: Radius.circular(
                                SizeConfig.screenHeight * 8 / 900),
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 15,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      height:
                                          SizeConfig.screenHeight * 75 / 900,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xff848484),
                                              width: SizeConfig.screenHeight *
                                                  0.3 /
                                                  900),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: SizeConfig.screenWidth *
                                                    17 /
                                                    1440,
                                                right: SizeConfig.screenWidth *
                                                    14 /
                                                    1440),
                                            child: Icon(
                                              Icons.account_circle_sharp,
                                              size: SizeConfig.screenWidth *
                                                  34.52 /
                                                  1440,
                                              color: Color(0xff848484),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Shubham Mandan',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff1c1c1c),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Course | Course | Course',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          14 /
                                                          900,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Color(0xfff36c24),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  right:
                                                      SizeConfig.screenWidth *
                                                          24 /
                                                          1440),
                                              child: Text(
                                                email,
                                                style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          16 /
                                                          900,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff515151),
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.screenHeight * 201 / 900,
                      right: SizeConfig.screenWidth * 31 / 1440,
                      child: Container(
                        width: SizeConfig.screenWidth * 452 / 1440,
                        height: SizeConfig.screenHeight * 40 / 900,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 0,
                                  blurRadius: SizeConfig.screenHeight * 4 / 900,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.screenHeight * 20 / 900)),
                        child: Container(
                          child: Row(children: [
                            SizedBox(width: SizeConfig.screenWidth * 32 / 1440),
                            Expanded(
                              child: Container(
                                width: SizeConfig.screenWidth * 185 / 1440,
                                child: TextField(
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenHeight * 18 / 900,
                                    color: Color(0xff1c1c1c),
                                    fontWeight: FontWeight.w500,
                                  ),
//controller: _searchInputController,
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    border: InputBorder.none,
                                    hintText: 'Search By Student Name',
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontSize:
                                          SizeConfig.screenHeight * 18 / 900,
                                      color: Color(0xff848484),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.search,
                                size: SizeConfig.screenHeight * 20 / 900,
                                color: Color(0xffF36C24)),
                            SizedBox(
                                width: SizeConfig.screenWidth * 9.67 / 1440),
                          ]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.screenHeight * 201 / 900,
                      left: SizeConfig.screenWidth * 38 / 1440,
                      child: Container(
                        width: SizeConfig.screenWidth * 120 / 1440,
                        height: SizeConfig.screenHeight * 40 / 900,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: SizeConfig.screenHeight * 4 / 900,
                                offset: Offset(0, 2))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            SizeConfig.screenHeight * 20 / 900,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: SizeConfig.screenWidth * 31 / 1440),
                            Text(
                              'All',
                              style: TextStyle(
                                color: Color(0xff305275),
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.screenHeight * 18 / 900,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: null,
                              child: Icon(
                                Icons.filter_list,
                                size: SizeConfig.screenHeight * 18 / 900,
                                color: Color(0xff305275),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 30 / 1440,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.screenHeight * 128 / 900,
                      right: SizeConfig.screenWidth * 33 / 1140,
                      child: InkWell(
                        onTap: () {
                          studentDialogBox(context);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.screenHeight * 30 / 900,
                          ),
                          child: Container(
                            height: SizeConfig.screenHeight * 40 / 900,
                            color: Color(0xffF36C24),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: SizeConfig.screenWidth * 13 / 1440,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: SizeConfig.screenHeight * 24 / 900,
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 9 / 1440,
                                ),
                                Text(
                                  'Add Student',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          SizeConfig.screenHeight * 18 / 900),
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 14 / 1440,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: SizeConfig.screenWidth * 67 / 1440,
              top: 0,
              child: Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth * 690 / 1440,
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      height: SizeConfig.screenHeight * 360 / 900,
                      width: SizeConfig.screenWidth * 690 / 1440,
                      color: Color(0xff2B4A68),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -(SizeConfig.screenWidth * 116 / 1440),
                            top: SizeConfig.screenHeight * 60 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 222 / 900,
                              width: SizeConfig.screenWidth * 196 / 1440,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 30 / 900,
                                      offset: Offset(5, 0))
                                ],
                                shape: BoxShape.circle,
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (SizeConfig.screenWidth * 203 / 1440),
                            top: SizeConfig.screenHeight * 113 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 86 / 900,
                              width: SizeConfig.screenWidth * 86 / 1440,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 30 / 900,
                                      offset: Offset(0, 0))
                                ],
                                shape: BoxShape.circle,
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (SizeConfig.screenWidth * 186 / 1440),
                            top: SizeConfig.screenHeight * 290 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 143 / 900,
                              width: SizeConfig.screenWidth * 143 / 1440,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 20 / 900,
                                      offset: Offset(0, -4))
                                ],
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (SizeConfig.screenWidth * 385 / 1440),
                            top: -SizeConfig.screenHeight * 60 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 217 / 900,
                              width: SizeConfig.screenWidth * 217 / 1440,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 30 / 900,
                                      offset: Offset(2, 4))
                                ],
                                shape: BoxShape.circle,
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (SizeConfig.screenWidth * 452 / 1440),
                            top: SizeConfig.screenHeight * 232 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 37 / 900,
                              width: SizeConfig.screenWidth * 37 / 1440,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 30 / 900,
                                      offset: Offset(0, 0))
                                ],
                                shape: BoxShape.circle,
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (SizeConfig.screenWidth * 619 / 1440),
                            top: SizeConfig.screenHeight * 290 / 900,
                            child: Container(
                              height: SizeConfig.screenHeight * 143 / 900,
                              width: SizeConfig.screenWidth * 143 / 1440,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius:
                                          SizeConfig.screenHeight * 20 / 900,
                                      offset: Offset(-4, -4))
                                ],
                                shape: BoxShape.circle,
                                color: Color(0x665080B0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.screenHeight * 252 / 900,
                      right: SizeConfig.screenWidth * 264 / 1440,
                      child: Container(
                        height: SizeConfig.screenHeight * 176 / 900,
                        width: SizeConfig.screenWidth * 176 / 1440,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white,
                              width: SizeConfig.screenHeight * 8 / 900),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500.0),
                          child: Image.asset(
                            'images/school.png',
                            scale: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: SizeConfig.screenHeight * 402 / 900,
                      child: Container(
                        height: SizeConfig.screenHeight * 498 / 900,
                        width: SizeConfig.screenWidth * 690 / 1440,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      right: SizeConfig.screenWidth * 15 / 1440,
                                    ),
                                    height: SizeConfig.screenHeight * 30 / 900,
                                    width: SizeConfig.screenWidth * 64 / 1440,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.screenHeight * 5 / 900,
                                      ),
                                      color: Color(0xffe2e2e2),
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit,
                                            color: Color(0xff305275),
                                            size: SizeConfig.screenHeight *
                                                15 /
                                                900 *
                                                1.3,
                                          ),
                                          Text(
                                            "Edit",
                                            style: TextStyle(
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      20 /
                                                      900,
                                              color: Color(0xffF1c1c1c),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Central Public School",
                              style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 30 / 900,
                                color: Color(0xffF315476),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 9 / 900,
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 500 / 1440,
                              child: Text(
                                address,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: SizeConfig.screenHeight * 20 / 900,
                                  color: Color(0xffF315476),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 25 / 900,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 14 / 1440,
//vertical: SizeConfig.screenHeight*13/900,
                              ),
                              height: SizeConfig.screenHeight * 77 / 900,
                              width: SizeConfig.screenWidth * 250 / 1440,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.screenHeight * 5 / 900,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: SizeConfig.screenHeight *
                                          15 /
                                          900 /
                                          2,
                                      offset: Offset(0, 0))
                                ],
                              ),
                              child: Row(children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Students",
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenHeight * 16 / 900,
                                        color: Color(0xff1c1c1c),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight * 9 / 900,
                                    ),
                                    Text(
                                      totalStudents,
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenHeight * 20 / 900,
                                        color: Color(0xff305275),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: SizeConfig.screenHeight * 47 / 900,
                                  width: SizeConfig.screenWidth * 0.7 / 1440,
                                  color: Color(0xff305275),
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Teachers",
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenHeight * 16 / 900,
                                        color: Color(0xff1c1c1c),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight * 9 / 900,
                                    ),
                                    Text(
                                      totalTeachers,
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenHeight * 20 / 900,
                                        color: Color(0xff305275),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 25 / 900,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 15,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          bottom: SizeConfig.screenHeight *
                                              20 /
                                              900,
                                          right: SizeConfig.screenWidth *
                                              70 /
                                              1440,
                                          left: SizeConfig.screenWidth *
                                              70 /
                                              1440,
                                        ),
                                        height:
                                            SizeConfig.screenHeight * 117 / 900,
                                        width:
                                            SizeConfig.screenWidth * 550 / 1440,
                                        decoration: BoxDecoration(
                                          color: Color(
                                            0xff305275,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            SizeConfig.screenHeight * 5 / 900,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(
                                          left: SizeConfig.screenWidth *
                                              73 /
                                              1440,
                                          right: SizeConfig.screenWidth *
                                              73 /
                                              1440,
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Branch Name",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "Branch Name",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height:
                                                    SizeConfig.screenHeight *
                                                        15 /
                                                        900,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Branch Code",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "Branch Name",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height:
                                                    SizeConfig.screenHeight *
                                                        15 /
                                                        900,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Contact No.",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "Branch Name",
                                                    style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight *
                                                          16 /
                                                          900,
                                                      color: Color(0xffffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 60 / 900,
              child: AppBar(
                backgroundColor: Colors.white,
                title: Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.screenWidth * 96 / 1440),
                  child: Text(
                    instituteName,
                    style: TextStyle(
                      fontSize: SizeConfig.screenHeight * 24 / 900,
                      color: Color(0xffF36C24),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xFFF36C24),
                          size: SizeConfig.screenWidth * 18 / 1440 * 1.3,
                        ),
                        onTap: () {
//todo:
                        },
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 22 / 1440,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 20 / 1440,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 18 / 1440,
                      ),
                      CircleAvatar(
                          backgroundColor: Color(0xffA6CAED),
                          radius: SizeConfig.screenHeight * 22.5 / 900),
                      SizedBox(
                        width: SizeConfig.screenWidth * 12 / 1440,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF848484),
                          size: SizeConfig.screenWidth * 36 / 1440,
                        ),
                        onTap: () {
//todo:
                        },
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 25 / 1440,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: SizeConfig.screenWidth * 67 / 1440,
              height: SizeConfig.screenHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff2E3842),
                  Color(0xff273f57),
// Color(0xff305275)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 2.0),
                    spreadRadius: 0,
                    blurRadius: SizeConfig.b * 1.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
