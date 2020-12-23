import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_screen/Utils/SizeConfig.dart';

class ProceedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: -(SizeConfig.screenWidth * 127 / 360),
            top: -(SizeConfig.screenHeight * 119 / 640),
            child: Container(
              height: SizeConfig.screenWidth * 246 / 360,
              width: SizeConfig.screenWidth * 246 / 360,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffecedee),
              ),
            ),
          ),
          Positioned(
            left: (SizeConfig.screenWidth * 242 / 360),
            top: (SizeConfig.screenHeight * 204 / 640),
            child: Container(
              height: SizeConfig.screenWidth * 246 / 360,
              width: SizeConfig.screenWidth * 246 / 360,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfffef4ef),
              ),
            ),
          ),
          Positioned(
            left: (SizeConfig.screenWidth * 116 / 360),
            right: (SizeConfig.screenWidth * 116 / 360),
            top: (SizeConfig.screenHeight * 129 / 640),
            child: Container(
              child: Column(
                children: [
                  Image.asset('images/guruleaf.png'),
                  SizedBox(
                    height: SizeConfig.screenHeight * 20 / 640,
                  ),
                  Container(
                    child: Text(
                      'Welcome to Gurucool!\nEnter your Institute code',
                      style: TextStyle(
                          color: Color(0xfff36c24),
                          fontSize: SizeConfig.screenWidth * 12 / 360),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: (SizeConfig.screenHeight * 42 / 640),
            left: (SizeConfig.screenWidth * 90 / 360),
            right: (SizeConfig.screenWidth * 90 / 360),
            child: GestureDetector(
              onTap: () {
                //TODO:
              },
              child: Container(
                height: SizeConfig.screenHeight * 30 / 640,
                width: SizeConfig.screenWidth * 160 / 360,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenWidth * 5 / 360),
                  color: Color(0xfff36c24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0.0, 2.0),
                      spreadRadius: SizeConfig.screenWidth * 0.005556 / 2,
                      blurRadius: SizeConfig.screenWidth * 0.005556 / 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                      child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 14 / 360,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: (SizeConfig.screenHeight * 247 / 640),
            left: (SizeConfig.screenWidth * 16 / 360),
            right: (SizeConfig.screenWidth * 16 / 360),
            child: GestureDetector(
              onTap: () {
                //TODO:
              },
              child: Container(
                color: Colors.white,
                height: SizeConfig.screenHeight * 40 / 640,
                width: SizeConfig.screenWidth * 306 / 360,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: SizeConfig.screenHeight * 8 / 640,
                      left: SizeConfig.screenWidth * 16 / 360,
                    ),
                    hintText: 'Institute Code',
                    hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 12 / 360,
                        fontWeight: FontWeight.w300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.screenWidth * 5 / 360),
                      ),
                      borderSide: BorderSide(
                          color: Color(0xffF36C24),
                          width: SizeConfig.screenWidth * 1 / 360),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.screenWidth * 5 / 360),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffF36C24),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
