import 'package:flutter/material.dart';
import 'package:my_institute/Utils/SizeConfig.dart';
import '../Utils/constants.dart';

void dialogBoxTwo(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBoxTwo();
      });
}

class DialogBoxTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
        insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.b * 1.5),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.b * 4.722,
                vertical: SizeConfig.screenHeight * 0.0265625),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(
                      color: hintTextColor,
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.v * 0.7816,
                        bottom: SizeConfig.v * 0.93,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Holder\'s name',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff515151))),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.026,
                ),
                TextField(
                  style: TextStyle(
                      color: hintTextColor,
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.v * 0.7816,
                        bottom: SizeConfig.v * 0.93,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'IFSC Code',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff515151))),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.026,
                ),
                TextField(
                  style: TextStyle(
                      color: hintTextColor,
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037),
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.v * 0.7816,
                        bottom: SizeConfig.v * 0.93,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Account Number',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff515151))),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037)),
                  maxLines: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: SizeConfig.screenWidth * 0.25,
                        height: SizeConfig.screenHeight * 0.046875,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0.0, 2.0),
                              spreadRadius:
                                  SizeConfig.screenWidth * 0.005556 / 2,
                              blurRadius: SizeConfig.screenWidth * 0.005556 / 2,
                            ),
                          ],
                          color: colorOrangePrimary,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.0138889),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: SizeConfig.screenWidth * 0.25,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(SizeConfig.b * 1.4)),
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 0.0389),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
