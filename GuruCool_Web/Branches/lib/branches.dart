import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Utils/sizeConfig.dart';
import 'branch_icons.dart';

class Branches extends StatelessWidget {
  final TextEditingController _searchInputController = TextEditingController();

  final String instituteName;
  final String name;
  final String numberOfBranches;
  final String branchesName;
  final String branchAddress;
  final String branchCode;

  Branches(
      {@required this.instituteName,
      @required this.name,
      @required this.numberOfBranches,
      @required this.branchesName,
      @required this.branchAddress,
      @required this.branchCode});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.screenHeight * 60 / 900),
          child: AppBar(
            backgroundColor: Colors.white,
            actions: [
              Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xFFF36C24),
                      size: SizeConfig.screenWidth * 25 / 1440,
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
                      size: SizeConfig.screenWidth * 27 / 1440,
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
        body: SafeArea(
            child: Column(children: [
          SizedBox(
            height: SizeConfig.screenHeight * 11 / 900,
          ),
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 282 / 900,
            color: Color(0xFF305275),
            child: Stack(
              children: [
                Positioned(
                  left: -(SizeConfig.screenWidth * 35 / 1440),
                  top: -(SizeConfig.screenHeight * 29 / 900),
                  child: Container(
                    height: SizeConfig.screenHeight * 143 / 900,
                    width: SizeConfig.screenHeight * 143 / 900,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2B4A68),
                    ),
                  ),
                ),
                Positioned(
                  left: (SizeConfig.screenWidth * 82 / 1440),
                  top: (SizeConfig.screenHeight * 173 / 900),
                  child: Container(
                    height: SizeConfig.screenHeight * 291 / 900,
                    width: SizeConfig.screenHeight * 291 / 900,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2B4A68),
                    ),
                  ),
                ),
                Positioned(
                  right: (SizeConfig.screenWidth * 110 / 1440),
                  top: -(SizeConfig.screenHeight * 177 / 900),
                  child: Container(
                    height: SizeConfig.screenHeight * 291 / 900,
                    width: SizeConfig.screenHeight * 291 / 900,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2B4A68),
                    ),
                  ),
                ),
                Positioned(
                  right: (SizeConfig.screenWidth * 27 / 1440),
                  top: (SizeConfig.screenHeight * 173 / 900),
                  child: Container(
                    height: SizeConfig.screenHeight * 143 / 900,
                    width: SizeConfig.screenHeight * 143 / 900,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2B4A68),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig.screenHeight * 120 / 900,
                        width: SizeConfig.screenHeight * 120 / 900,
                        margin:
                            EdgeInsets.all(SizeConfig.screenHeight * 5 / 900),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white,
                              width: SizeConfig.screenHeight * 2.5 / 900),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500.0),
                          child: Image.asset(
                            'assets/images/school.png',
                            scale: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 12 / 900,
                      ),
                      Text(
                        instituteName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenHeight * 40 / 900,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 8 / 900,
                      ),
                      Text(
                        'No. of Branches : $numberOfBranches',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenHeight * 24 / 900,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 26 / 900),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFE5E5E5),
              width: SizeConfig.screenWidth,
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 1070 / 1440,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.screenWidth * 60 / 1440,
                        0,
                        SizeConfig.screenWidth * 70 / 1440,
                        0),
                    child: Expanded(
                      child: SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: SizeConfig.screenHeight * 42 / 900,
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 555 / 1440,
                              height: SizeConfig.screenHeight * 40 / 900,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 20 / 900),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0.0, 2.0),
                                    spreadRadius: 0,
                                    blurRadius: SizeConfig.b * 0.4,
                                  ),
                                ],
                              ),
                              child: TextField(
                                textInputAction: TextInputAction.search,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 24 / 1440,
                                      top: SizeConfig.screenHeight * 8 / 900),
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  isDense: true,
                                  hintStyle: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 18 / 1440,
                                    color: Color(0xff848484),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  suffixIcon: Icon(Icons.search,
                                      color: Color(0xfff36c24)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 38 / 900,
                            ),
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1.5,
                                crossAxisSpacing:
                                    SizeConfig.screenWidth * 41 / 1440,
                              ),
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Container(
                                      height:
                                          SizeConfig.screenHeight * 110 / 900,
                                      width:
                                          SizeConfig.screenWidth * 255 / 1440,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xff315476),
                                          Color(0xff5080b0),
                                        ]),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(
                                            SizeConfig.screenHeight * 8 / 900,
                                          ),
                                          topLeft: Radius.circular(
                                            SizeConfig.screenHeight * 8 / 900,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                right: SizeConfig.screenWidth *
                                                    14 /
                                                    1440),
                                            alignment: Alignment.centerRight,
                                            height: SizeConfig.screenHeight *
                                                30 /
                                                900,
                                            child: Text(
                                              branchCode,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          20 /
                                                          900,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeConfig.screenHeight *
                                                15 /
                                                900,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    SizeConfig.screenWidth *
                                                        14 /
                                                        1440),
                                            child: Text(
                                              branchesName,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          20 /
                                                          900,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          SizeConfig.screenHeight * 50 / 900,
                                      width:
                                          SizeConfig.screenWidth * 255 / 1440,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                              SizeConfig.screenHeight * 8 / 900,
                                            ),
                                            bottomLeft: Radius.circular(
                                              SizeConfig.screenHeight * 8 / 900,
                                            ),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: Offset(0.0, 0.0),
                                              spreadRadius: 0,
                                              blurRadius: SizeConfig.b * 1.5,
                                            ),
                                          ]),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              width: SizeConfig.screenWidth *
                                                  13 /
                                                  1440),
                                          Icon(Icons.location_on,
                                              size: SizeConfig.screenHeight *
                                                  20 /
                                                  900,
                                              color: Color(0xff305275)),
                                          Container(
                                            width: SizeConfig.screenWidth *
                                                197 /
                                                1440,
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    SizeConfig.screenWidth *
                                                        5 /
                                                        1440),
                                            child: Text(
                                              branchAddress,
                                              style: TextStyle(
                                                  color: Color(0xff515151),
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          14 /
                                                          900,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: SizeConfig.screenWidth * 62 / 1440,
                        top: SizeConfig.screenHeight * 58 / 900),
                    width: SizeConfig.screenWidth * 370 / 1440,
                    child: Container(
                      height: SizeConfig.screenHeight * 371 / 900,
                      width: SizeConfig.screenWidth * 308 / 1440,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenHeight * 10 / 900),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 0.0),
                              spreadRadius: 0,
                              blurRadius: SizeConfig.b * 1.5,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: null,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: SizeConfig.screenHeight * 33 / 900,
                              ),
                              height: SizeConfig.screenHeight * 48 / 900,
                              width: SizeConfig.screenWidth * 275 / 1440,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 5 / 900),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 19 / 1440,
                                    ),
                                    child: Icon(
                                      Branch.admin_corner,
                                      size: SizeConfig.screenHeight * 22 / 900,
                                    ),
                                  ),
                                  Expanded(
                                      child: Center(
                                    child: Text(
                                      'Admin Corner',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff1c1c1c),
                                        fontSize:
                                            SizeConfig.screenHeight * 20 / 900,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: null,
                            child: Container(
                              height: SizeConfig.screenHeight * 48 / 900,
                              width: SizeConfig.screenWidth * 275 / 1440,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 5 / 900),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 19 / 1440,
                                    ),
                                    child: Icon(
                                      Branch.add_branch,
                                      size: SizeConfig.screenHeight * 22 / 900,
                                    ),
                                  ),
                                  Expanded(
                                      child: Center(
                                    child: Text(
                                      'Add Branch',
                                      style: TextStyle(
                                        color: Color(0xff1c1c1c),
                                        fontSize:
                                            SizeConfig.screenHeight * 20 / 900,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: null,
                            child: Container(
                              height: SizeConfig.screenHeight * 48 / 900,
                              width: SizeConfig.screenWidth * 275 / 1440,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 5 / 900),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 19 / 1440,
                                    ),
                                    child: Icon(
                                      Branch.statistics,
                                      size: SizeConfig.screenHeight * 22 / 900,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        'Statistics',
                                        style: TextStyle(
                                          color: Color(0xff1c1c1c),
                                          fontSize: SizeConfig.screenHeight *
                                              20 /
                                              900,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: SizeConfig.screenHeight * 48 / 900,
                            width: SizeConfig.screenWidth * 275 / 1440,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.screenHeight * 5 / 900),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 19 / 1440,
                                  ),
                                  child: Icon(
                                    Branch.arrange_meeting,
                                    size: SizeConfig.screenHeight * 22 / 900,
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Arrange Meeting',
                                      style: TextStyle(
                                        color: Color(0xff1c1c1c),
                                        fontSize:
                                            SizeConfig.screenHeight * 20 / 900,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: null,
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 30 / 900,
                              ),
                              height: SizeConfig.screenHeight * 48 / 900,
                              width: SizeConfig.screenWidth * 275 / 1440,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 5 / 900),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 19 / 1440,
                                    ),
                                    child: Icon(
                                      Branch.mid_admin_list,
                                      size: SizeConfig.screenHeight * 22 / 900,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        'Mid-Admin List',
                                        style: TextStyle(
                                          color: Color(0xff1c1c1c),
                                          fontSize: SizeConfig.screenHeight *
                                              20 /
                                              900,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}
