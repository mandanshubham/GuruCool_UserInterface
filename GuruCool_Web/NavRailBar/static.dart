import 'package:flutter/material.dart';
import 'package:me/Utils/sizeConfig.dart';

import 'Navigation Rail/navRail.dart';

class Static extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: SizeConfig.screenWidth * 67 / 1440,
              height: SizeConfig.screenHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff2E3842),
                  Color(0xff273f57),
                  // Color(0xff305275)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 2.0),
                    spreadRadius: 0,
                    blurRadius: SizeConfig.b * 1.5,
                  ),
                ],
              ),
            ),
            Navigation(),
            Positioned(
              right: 0,
              child: Container(
                height: SizeConfig.screenHeight * 60 / 900,
                width: SizeConfig.screenWidth * 1373 / 1440,
                child: AppBar(
                  backgroundColor: Colors.white,
                  actions: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Color(0xFFF36C24),
                            size: SizeConfig.screenWidth * 36 / 1440,
                          ),
                          onPressed: () {
                            //todo:
                          },
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth * 22 / 1440,
                        ),
                        Text(
                          'Ayush Bhardwaj',
                          style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 20 / 1440,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth * 18 / 1440,
                        ),
                        CircleAvatar(
                            backgroundColor: Color(0xffA6CAED),
                            radius: SizeConfig.screenHeight * 22.5 / 900),
                        SizedBox(
                          width: SizeConfig.screenWidth * 12 / 1440,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF848484),
                            size: SizeConfig.screenWidth * 36 / 1440,
                          ),
                          onPressed: () {
                            //todo:
                          },
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth * 25 / 1440,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
