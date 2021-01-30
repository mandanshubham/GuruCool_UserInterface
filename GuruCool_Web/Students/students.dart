import 'package:cool/SizeConfig.dart';
import 'package:cool/Widgets/studentDialogBox.dart';
import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  final String instituteName;
  final String name;
  final String email;
  final String studentName;
  final String courseName;
  final String totalNumberOfStudents;

  Students({
    @required this.instituteName,
    @required this.name,
    @required this.email,
    @required this.studentName,
    @required this.courseName,
    @required this.totalNumberOfStudents,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: SizeConfig.screenWidth * 67 / 1440,
                top: 0,
                child: Container(
                  width: SizeConfig.screenWidth * 182 / 1440,
                  height: SizeConfig.screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0.0, 2.0),
                        spreadRadius: 0,
                        blurRadius: SizeConfig.b * 1.5,
                      ),
                    ],
                  ),
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        child: Center(
                          child: Text('Subject'),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: SizeConfig.screenHeight * 96 / 900),
                            Container(
                              width: SizeConfig.screenWidth * 182,
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 33 / 1440),
                              child: Text(
                                'Courses',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenHeight * 20 / 900,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff36c24)),
                              ),
                            ),
                            SizedBox(
                                height: SizeConfig.screenHeight * 16 / 900),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: SizeConfig.screenWidth * 182,
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 34 / 1440),
                                  margin: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.screenHeight * 8 / 900),
                                  child: Text(
                                    courseName,
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenHeight * 18 / 900,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1c1c1c),
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Time-Table'),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Library'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight * 60 / 900,
                child: AppBar(
                  backgroundColor: Colors.white,
                  title: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 96 / 1440),
                    child: Text(
                      instituteName,
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 24 / 900,
                          color: Color(0xffF36C24),
                          fontWeight: FontWeight.w500),
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
              Positioned(
                right: SizeConfig.screenWidth * 71 / 1440,
                top: SizeConfig.screenHeight * 88 / 900,
                child: Container(
                  width: SizeConfig.screenWidth * 1058 / 1440,
                  height: SizeConfig.screenHeight * 54 / 900,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.screenHeight * 0.1056),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: Offset(0.0, 0.0),
                        spreadRadius: 0,
                        blurRadius: SizeConfig.screenHeight * 7.5 / 900,
                      ),
                    ],
                  ),
                  child: TabBar(
                    indicatorWeight: SizeConfig.screenHeight * 6 / 900,
                    indicatorColor: Color(0xffF36C24),
                    labelPadding: EdgeInsets.zero,
                    labelColor: Color(0xffF36C24),
                    indicatorSize: TabBarIndicatorSize.label,
                    automaticIndicatorColorAdjustment: true,
                    unselectedLabelColor: Color(0xff515151),
                    tabs: [
                      Tab(
                        child: Text(
                          'Subject                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.02444,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Student                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.02444,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Time-Table                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.02444,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Library                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.02444,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: SizeConfig.screenHeight * 144 / 900,
                child: Container(
                  width: SizeConfig.screenWidth * 1191 / 1440,
                  height: SizeConfig.screenHeight * 756 / 900,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        child: Center(
                          child: Text('Subject'),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Positioned(
                              top: SizeConfig.screenHeight * 117 / 900,
                              right: SizeConfig.screenWidth * 73 / 1440,
                              child: Container(
                                width: SizeConfig.screenWidth * 1046 / 1440,
                                height: SizeConfig.screenHeight * 640 / 900,
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
                                    Container(
                                      height:
                                          SizeConfig.screenHeight * 60 / 900,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: SizeConfig.screenWidth *
                                                      27 /
                                                      1440),
                                              child: Text(
                                                'Name',
                                                style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          24 /
                                                          900,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff848484),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  right:
                                                      SizeConfig.screenWidth *
                                                          27 /
                                                          1440),
                                              child: Text(
                                                'Email',
                                                style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          24 /
                                                          900,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff848484),
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 15,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              height: SizeConfig.screenHeight *
                                                  75 /
                                                  900,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: Color(0xff848484),
                                                      width: SizeConfig
                                                              .screenHeight *
                                                          0.3 /
                                                          900),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: SizeConfig
                                                                .screenWidth *
                                                            24 /
                                                            1440,
                                                        right: SizeConfig
                                                                .screenWidth *
                                                            30 /
                                                            1440),
                                                    child: Icon(
                                                      Icons
                                                          .account_circle_sharp,
                                                      size: SizeConfig
                                                              .screenWidth *
                                                          36 /
                                                          1440,
                                                      color: Color(0xff848484),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: SizeConfig
                                                                  .screenWidth *
                                                              27 /
                                                              1440),
                                                      child: Text(
                                                        studentName,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          fontSize: SizeConfig
                                                                  .screenHeight *
                                                              20 /
                                                              900,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Color(0xff1c1c1c),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          right: SizeConfig
                                                                  .screenWidth *
                                                              27 /
                                                              1440),
                                                      child: Text(
                                                        email,
                                                        style: TextStyle(
                                                          fontSize: SizeConfig
                                                                  .screenHeight *
                                                              20 /
                                                              900,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Color(0xff515151),
                                                        ),
                                                        textAlign:
                                                            TextAlign.right,
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
                              top: SizeConfig.screenHeight * 38 / 900,
                              right: SizeConfig.screenWidth * 256 / 1440,
                              child: Container(
                                width: SizeConfig.screenWidth * 323 / 1440,
                                height: SizeConfig.screenHeight * 40 / 900,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 0,
                                          blurRadius:
                                              SizeConfig.screenHeight * 4 / 900,
                                          offset: Offset(0, 2))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.screenHeight * 20 / 900)),
                                child: Container(
                                  child: Row(children: [
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 20 / 1440),
                                    Expanded(
                                      child: Container(
                                        width: SizeConfig.screenWidth * 0.154,
                                        child: TextField(
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      18 /
                                                      900,
                                              color: Color(0xff1c1c1c),
                                              fontWeight: FontWeight.w400),

                                          //controller: _searchInputController,
                                          decoration: InputDecoration(
                                              isCollapsed: true,
                                              border: InputBorder.none,
                                              hintText:
                                                  'Search By Student Name',
                                              isDense: true,
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight *
                                                          18 /
                                                          900,
                                                  color: Color(0xff848484),
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.search,
                                        size:
                                            SizeConfig.screenHeight * 20 / 900,
                                        color: Color(0xffF36C24)),
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 9 / 1440),
                                  ]),
                                ),
                              ),
                            ),
                            Positioned(
                              top: SizeConfig.screenHeight * 38 / 900,
                              right: SizeConfig.screenWidth * 60 / 1140,
                              child: InkWell(
                                onTap: () {
                                  studentDialogBox(context);
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.screenHeight * 30 / 900),
                                    child: Container(
                                      height:
                                          SizeConfig.screenHeight * 40 / 900,
                                      color: Color(0xffF36C24),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: SizeConfig.screenWidth *
                                                13 /
                                                1440,
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: SizeConfig.screenHeight *
                                                24 /
                                                900,
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth *
                                                9 /
                                                1440,
                                          ),
                                          Text(
                                            'Add Student',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize:
                                                    SizeConfig.screenHeight *
                                                        18 /
                                                        900),
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth *
                                                14 /
                                                1440,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            Positioned(
                              top: SizeConfig.screenHeight * 90 / 900,
                              right: SizeConfig.screenWidth * 75 / 1440,
                              child: Text(
                                'Total no. of students : $totalNumberOfStudents',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenHeight * 14 / 900,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff848484)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Time-Table'),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Library'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
