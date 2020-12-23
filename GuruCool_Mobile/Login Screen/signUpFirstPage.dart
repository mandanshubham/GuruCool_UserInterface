import 'package:flutter/material.dart';
import 'package:login_screen/Utils/SizeConfig.dart';

class SignUpFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: -(SizeConfig.screenWidth * 130 / 360),
            top: -(SizeConfig.screenHeight * 86 / 640),
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
            left: (SizeConfig.screenWidth * 202 / 360),
            top: (SizeConfig.screenHeight * 40 / 640),
            child: GestureDetector(
              onTap: () {
                //TODO:
              },
              child: Container(
                height: SizeConfig.screenHeight * 25 / 640,
                width: SizeConfig.screenWidth * 170 / 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0.0, 2.0),
                      spreadRadius: SizeConfig.screenWidth * 0.005556 / 2,
                      blurRadius: SizeConfig.screenWidth * 0.005556 / 2,
                    ),
                  ],
                  color: Color(0xfff36c24),
                ),
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(width: SizeConfig.screenWidth * 10 / 360),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: SizeConfig.screenWidth * 15 / 360,
                      ),
                      SizedBox(width: SizeConfig.screenWidth * 4 / 360),
                      Text(
                        'Register your Institute',
                        style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 12 / 360,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: (SizeConfig.screenWidth * 100 / 360),
            right: (SizeConfig.screenWidth * 100 / 360),
            top: (SizeConfig.screenHeight * 136 / 640),
            child: Container(
              height: SizeConfig.screenHeight * 181 / 640,
              width: SizeConfig.screenWidth * 153 / 360,
              child: Image.asset('images/logopng.png'),
            ),
          ),
          Positioned(
            bottom: (SizeConfig.screenHeight * 60 / 640),
            left: (SizeConfig.screenWidth * 36 / 360),
            right: (SizeConfig.screenWidth * 36 / 360),
            child: GestureDetector(
              onTap: () {
                //TODO:
              },
              child: Container(
                height: SizeConfig.screenHeight * 34 / 640,
                width: SizeConfig.screenWidth * 268 / 360,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenWidth * 5 / 360),
                  color: Color(0xfff36c24),
                ),
                child: Center(
                  child: Container(
                      child: Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 14 / 360,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
