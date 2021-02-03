import 'package:flutter/material.dart';
import 'package:institute/Utils/sizeConfig.dart';

void studentDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StudentDialogBox();
      });
}

class StudentDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 450 / 1440),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 5 / 1440),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(SizeConfig.screenWidth * 28 / 1140),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 16 / 1440,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      hintText: 'Name',
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 15 / 1440,
                        top: SizeConfig.screenHeight * 11 / 900,
                        bottom: SizeConfig.screenHeight * 5 / 900,
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5D5D5))),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 16 / 1440,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 14 / 900,
                ),
                TextField(
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 16 / 1440,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 15 / 1440,
                        top: SizeConfig.screenHeight * 11 / 900,
                        bottom: SizeConfig.screenHeight * 5 / 900,
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5D5D5))),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 16 / 1440,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 14 / 900,
                ),
                TextField(
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 16 / 1440,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 15 / 1440,
                        top: SizeConfig.screenHeight * 11 / 900,
                        bottom: SizeConfig.screenHeight * 5 / 900,
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5D5D5))),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 16 / 1440,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 14 / 900,
                ),
                TextField(
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 16 / 1440,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                    hintText: 'Address',
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 15 / 1440,
                      top: SizeConfig.screenHeight * 11 / 900,
                      bottom: SizeConfig.screenHeight * 5 / 900,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD5D5D5))),
                    hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 16 / 1440,
                        fontWeight: FontWeight.w400,
                        letterSpacing: SizeConfig.b * 0.037),
                  ),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 14 / 900,
                ),
                TextField(
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 16 / 1440,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                    hintText: 'Select Course',
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 15 / 1440,
                      top: SizeConfig.screenHeight * 11 / 900,
                      bottom: SizeConfig.screenHeight * 5 / 900,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD5D5D5))),
                    hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 16 / 1440,
                        fontWeight: FontWeight.w400,
                        letterSpacing: SizeConfig.b * 0.037),
                  ),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 14 / 900,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: SizeConfig.screenWidth * 135 / 1440,
                        height: SizeConfig.screenHeight * 40 / 900,
                        decoration: BoxDecoration(
                          color: Color(0xffF36C24),
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 5 / 1440),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: SizeConfig.screenWidth * 0.25,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                SizeConfig.screenWidth * 5 / 1440),
                          ),
                          child: Text(
                            'Add',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 16 / 1440),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
