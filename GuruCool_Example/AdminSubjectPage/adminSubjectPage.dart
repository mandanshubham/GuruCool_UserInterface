import 'package:coach_app/InstituteAdmin/studentList.dart';
import 'package:coach_app/NewUI/books-page2.dart';
import 'package:coach_app/TimeTableSection/TimeTablePage.dart';
import 'package:coach_app/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Widget name same as file Name
class AdminSubjectPage extends StatelessWidget {
  final String courseId;
  final passKey;
  final String schoolName;
  AdminSubjectPage({
    @required this.courseId,
    @required this.passKey,
    @required this.schoolName,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: GuruCoolLightColor.primaryColor,
            ),
            onPressed: () {
              print('Show menu');
            },
          ),
          title: Text(
            schoolName,
            style: TextStyle(
              color: GuruCoolLightColor.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: GuruCoolLightColor.primaryColor,
              ),
              onPressed: () {
                print('Notification');
              },
            )
          ],
          bottom: TabBar(
            indicatorColor: GuruCoolLightColor.primaryColor,
            labelPadding: EdgeInsets.zero,
            labelColor: GuruCoolLightColor.primaryColor,
            unselectedLabelColor: Color(0xff858A8F),
            tabs: [
              Tab(
                child: Text(
                  'Subject',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.b * 3.8,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Student',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: size.b * 3.8),
                ),
              ),
              Tab(
                child: Text(
                  'Time-Table',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: size.b * 3.8),
                ),
              ),
              Tab(
                child: Text(
                  'Library',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: size.b * 3.8),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: size.b * 1.75,
          unselectedFontSize: size.b * 1.75,
          selectedItemColor: GuruCoolLightColor.primaryColor,
          iconSize: size.b * 7,
          unselectedItemColor: Color(0xff999999),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'PROFILE'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialogueBox(context),
          child: Icon(
            Icons.add,
            size: size.b * 8.9,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff2E3842),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Subject'),
              ),
            ),
            StudentList(
              courseId: courseId,
            ),
            TimeTablePage(
              courseId: courseId,
            ),
            Library(),
          ],
        ),
      ),
    );
  }

  void showDialogueBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.all(size.b * 3.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.b * 4),
            ),
            child: Container(
              padding: EdgeInsets.all(size.b * 2.5),
              height: size.screenHeight * 0.235,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.b * 3.8),
                    padding: EdgeInsets.only(left: size.b * 2.5),
                    width: size.screenWidth * 1.2,
                    height: size.screenHeight * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff999999)),
                        borderRadius: BorderRadius.circular(size.b * 1.2)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add Link',
                          hintStyle: TextStyle(
                              color: Color(0xff717171),
                              fontSize: size.b * 3.8,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.b * 4),
                    padding: EdgeInsets.only(left: size.b * 2.5),
                    width: size.screenWidth * 1.2,
                    height: size.screenHeight * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff999999)),
                        borderRadius: BorderRadius.circular(size.b * 1.2)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add Title',
                          hintStyle: TextStyle(
                              color: Color(0xff717171),
                              fontSize: size.b * 3.8,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RawMaterialButton(
                        onPressed: () {
                          print('Add book');
                        },
                        fillColor: Color(0xffEF7334),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(size.b * 1.2)),
                        child: Text(
                          'Add Book',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: size.b * 3.85),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
