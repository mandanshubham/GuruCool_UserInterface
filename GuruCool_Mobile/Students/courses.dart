import 'package:flutter/material.dart';
import 'package:students/Utils/SizeConfig.dart';
import 'package:students/studentTab.dart';

import 'Utils/constants.dart';

class Courses extends StatelessWidget {
  final String instituteNameTitle;

  Courses({@required this.instituteNameTitle});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: colorPrimaryBackground,
        appBar: AppBar(
          elevation: 8,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: colorOrangePrimary,
              ),
              onPressed: () {}),
          title: Transform(
              transform: Matrix4.translationValues(
                  -SizeConfig.screenWidth * 0.06, 0, 0),
              child: Text(instituteNameTitle,
                  style: TextStyle(
                      color: colorOrangePrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.05))),
          actions: [
            Row(children: [
              IconButton(
                  icon:
                      Icon(Icons.notifications_none, color: colorOrangePrimary),
                  onPressed: () {}),
              CircleAvatar(
                  backgroundColor: Color(0xffA4A4A4),
//backgroundImage: (),
                  radius: SizeConfig.screenWidth *
                      0.0862 /
                      2), //to pass the imageUrl
              SizedBox(width: SizeConfig.screenWidth * 0.025)
            ])
          ],
          bottom: TabBar(
              indicatorColor: colorOrangePrimary,
              labelPadding: EdgeInsets.zero,
              labelColor: colorOrangePrimary,
              indicatorWeight: SizeConfig.screenWidth * 0.0111111,
              unselectedLabelColor: Color(0xff848484),
              tabs: [
                Tab(
                  child: Text(
                    'Subject',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Student',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Time-Table',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Library',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.ac_unit),
            StudentTab(
              schoolName: 'Delhi Public School',
              studentName: 'Kishan Singh',
              email: 'kishan@gmail.com',
              numberOfStudents: '20',
              passKey: 20,
              courseId: '202020',
            ),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}
