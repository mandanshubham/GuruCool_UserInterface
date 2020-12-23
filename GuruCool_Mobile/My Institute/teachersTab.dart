import 'package:flutter/material.dart';
import 'file:///C:/Users/Shubham%20Mandan/AndroidStudioProjects/my_institute/lib/Utils/constants.dart';
import 'Utils/SizeConfig.dart';
import 'Widgets/teacherDialogBox.dart';

class TeachersTab extends StatelessWidget {
  final String teacher;
  final String courseId;
  final passKey;
  final String email;
  final String schoolName;
  final String numberOfTeachers;

  TeachersTab({
    @required this.teacher,
    @required this.courseId,
    @required this.passKey,
    @required this.email,
    @required this.numberOfTeachers,
    @required this.schoolName,
  });

  final TextEditingController _searchInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, size: SizeConfig.screenWidth * 0.0486 * 1.5),
          backgroundColor: colorOrangePrimary,
          onPressed: () {
            teacherDialogBox(context);
          }),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03125),
            Center(
              child: Container(
                width: SizeConfig.screenWidth * 0.79,
                height: SizeConfig.screenHeight * 0.046875,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0.0, 2.0),
                      spreadRadius: SizeConfig.b * 0.2,
                      blurRadius: SizeConfig.b * 0.5,
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenWidth * 0.05556),
                ),
                child: Row(children: [
                  SizedBox(width: SizeConfig.screenWidth * 0.0375),
                  Icon(Icons.search,
                      color: colorOrangePrimary,
                      size: SizeConfig.screenWidth * 0.05),
                  SizedBox(width: SizeConfig.screenWidth * 0.04167 / 3),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.04167 / 2),
                    width: SizeConfig.screenWidth * 0.6611,
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.035,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      controller: _searchInputController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search by Teacher Name',
                        isDense: true,
                        hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0333,
                            color: Color(0xff848484),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125 / 2),
            Text(
              "Number of Teachers: ${this.numberOfTeachers}",
              style: TextStyle(
                  color: Color(0xff305275),
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.screenWidth * 0.02778),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenWidth * 0.056),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(children: [
                                CircleAvatar(
                                  radius: SizeConfig.screenWidth * 0.042,
                                  backgroundColor: Color(0xffDADADA),
                                ),
                                SizedBox(
                                    width: SizeConfig.screenWidth * 0.030556),
                                Container(
                                  width: SizeConfig.screenWidth * 0.77,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(this.teacher,
                                            style: TextStyle(
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.044444,
                                                color: Color(0xff1C1C1C))),
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.003125),
                                        Text(this.email,
                                            style: TextStyle(
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.033333,
                                                color: Color(0xff515151))),
                                      ]),
                                ),
                              ]),
                              SizedBox(width: SizeConfig.screenWidth * 0.0125),
                              Container(
                                width: SizeConfig.screenWidth * 0.77,
                                child: Divider(
                                  color: Color(0xff515151),
                                ),
                              ),
                              SizedBox(
                                  height: SizeConfig.screenHeight * 0.0125),
                            ]),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
