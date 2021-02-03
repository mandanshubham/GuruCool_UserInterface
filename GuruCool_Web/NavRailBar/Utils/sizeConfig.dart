import 'package:flutter/material.dart';

class SizeConfig {
  MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double b;
  static double v;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    b = (screenWidth - _safeAreaHorizontal) / 100;
    v = (screenHeight - _safeAreaVertical) / 100;
  }
}

// Container(
// width: SizeConfig.screenWidth * 555 / 1440,
// height: SizeConfig.screenHeight * 40 / 900,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(
// SizeConfig.screenHeight * 20 / 900),
// boxShadow: [
// BoxShadow(
// color: Colors.black.withOpacity(0.1),
// offset: Offset(0.0, 2.0),
// spreadRadius: 0,
// blurRadius: SizeConfig.b * 0.4,
// ),
// ],
// ),
// child: TextField(
// textInputAction: TextInputAction.search,
// decoration: InputDecoration(
// contentPadding: EdgeInsets.only(
// left: SizeConfig.screenWidth * 24 / 1440,
// top: SizeConfig.screenHeight * 8 / 900),
// border: InputBorder.none,
// hintText: 'Search',
// isDense: true,
// hintStyle: TextStyle(
// fontSize:
// SizeConfig.screenWidth * 18 / 1440,
// color: Color(0xff848484),
// fontWeight: FontWeight.w400,
// ),
// suffixIcon: Icon(Icons.search,
// color: Color(0xfff36c24)),
// ),
// ),
// ),
