import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_institute/Utils/constants.dart';
import 'package:my_institute/instituteTab.dart';
import 'Utils/SizeConfig.dart';
import 'package:my_institute/studentsTab.dart';
import 'package:my_institute/teachersTab.dart';

class MyInstitute extends StatelessWidget {
  final String instituteNameTitle;

  MyInstitute({@required this.instituteNameTitle});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
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
                    'Institue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Students',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.screenWidth * 0.04444,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Teachers',
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
            InstituteTab(
              instituteName: 'Delhi Public School',
              instituteAddress: 'Address address address address address',
              totalStudents: '50',
              totalTeachers: '20',
            ),
            StudentsTab(
              studentName: 'Shubham',
              courseId: '55005',
              passKey: 65,
              email: 'mandanshubham@gmail.com',
              numberOfStudents: '15',
              schoolName: 'surya school',
            ),
            TeachersTab(
              teacher: 'Amit',
              courseId: '55005',
              passKey: 65,
              email: 'mandanshubham@gmail.com',
              numberOfTeachers: '15',
              schoolName: 'surya school',
            )
          ],
        ),
      ),
    );
  }
}
