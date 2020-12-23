import 'package:flutter/material.dart';
import 'Utils/SizeConfig.dart';
import 'Widgets/dialogBoxOne.dart';
import 'Widgets/dialogBoxTwo.dart';

class InstituteTab extends StatelessWidget {
  final String instituteName;
  final String instituteAddress;
  final String totalStudents;
  final String totalTeachers;

  InstituteTab({
    @required this.instituteName,
    @required this.instituteAddress,
    @required this.totalStudents,
    @required this.totalTeachers,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 193 / 640,
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 22 / 640),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff7097BD),
                      Color(0xff445261),
                    ]),
                    borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 10 / 360),
                  ),
                  width: SizeConfig.screenWidth * 337 / 360,
                  height: SizeConfig.screenHeight * 145 / 640,
                  padding: EdgeInsets.only(right: 18),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 16 / 360,
                                top: SizeConfig.screenHeight * 25 / 640,
                              ),
                              child: CircleAvatar(
                                radius: SizeConfig.screenWidth * 35 / 360,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: SizeConfig.screenHeight * 12 / 640,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: SizeConfig.screenWidth * 12 / 360,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: SizeConfig.screenHeight * 8 / 640,
                              ),
                              child: Text(
                                instituteName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 20 / 360,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 198 / 360,
                              child: Text(
                                instituteAddress,
                                style: TextStyle(
                                  color: Color(0xffE5E5E5),
                                  fontSize: SizeConfig.screenWidth * 12 / 360,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: SizeConfig.screenWidth * 44 / 360,
                  top: SizeConfig.screenHeight * 115 / 640,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            blurRadius: 5.0,
                            offset: Offset(
                                2.0, 2.0) // shadow direction: bottom right
                            )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 10 / 360),
                    ),
                    width: SizeConfig.screenWidth * 249 / 360,
                    height: SizeConfig.screenHeight * 77 / 640,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 15 / 360,
                            right: SizeConfig.screenWidth * 15 / 360,
                            top: SizeConfig.screenHeight * 14 / 640,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Total Students',
                                style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: SizeConfig.screenHeight * 10 / 640,
                                ),
                                child: Text(
                                  totalStudents,
                                  style: TextStyle(
                                      color: Color(0xff305275),
                                      fontSize:
                                          SizeConfig.screenWidth * 20 / 360,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff305275),
                          height: 41,
                          width: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 15 / 360,
                            right: SizeConfig.screenWidth * 15 / 360,
                            top: SizeConfig.screenHeight * 14 / 640,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Total Teachers',
                                style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: SizeConfig.screenHeight * 10 / 640,
                                ),
                                child: Text(
                                  totalTeachers,
                                  style: TextStyle(
                                      color: Color(0xff305275),
                                      fontSize:
                                          SizeConfig.screenWidth * 20 / 360,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 14 / 640,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff7097BD),
                Color(0xff445261),
              ]),
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 10 / 360),
            ),
            width: SizeConfig.screenWidth * 318 / 360,
            height: SizeConfig.screenHeight * 128 / 640,
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 14 / 360,
                          right: SizeConfig.screenWidth * 14 / 360,
                          top: SizeConfig.screenHeight * 36 / 640),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'Branch Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'Branch Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'Contact No.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.screenWidth * 14 / 360,
                              top: SizeConfig.screenHeight * 36 / 640),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  'Jamnagar Branch',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  '9414533',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  '9874563210.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    right: SizeConfig.screenWidth * 7 / 360,
                    top: SizeConfig.screenHeight * 10 / 640,
                    child: GestureDetector(
                      onTap: () {
                        print('pressed');
                        dialogBoxOne(context);
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: SizeConfig.screenWidth * 14 / 360,
                              color: Colors.white,
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 4 / 360),
                            Text(
                              'Edit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 14 / 640,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff7097BD),
                Color(0xff445261),
              ]),
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 10 / 360),
            ),
            width: SizeConfig.screenWidth * 318 / 360,
            height: SizeConfig.screenHeight * 128 / 640,
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 14 / 360,
                          right: SizeConfig.screenWidth * 14 / 360,
                          top: SizeConfig.screenHeight * 36 / 640),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'Holder\'s Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'IFSC Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.screenHeight * 4 / 640),
                            child: Text(
                              'Account No.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.screenWidth * 14 / 360,
                              top: SizeConfig.screenHeight * 36 / 640),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  'Jamnagar Branch',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  '9414533',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.screenHeight * 4 / 640),
                                child: Text(
                                  '9874563210.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 14 / 360,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    right: SizeConfig.screenWidth * 7 / 360,
                    top: SizeConfig.screenHeight * 10 / 640,
                    child: GestureDetector(
                      onTap: () {
                        dialogBoxTwo(context);
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: SizeConfig.screenWidth * 14 / 360,
                              color: Colors.white,
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 4 / 360),
                            Text(
                              'Edit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 14 / 360,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
