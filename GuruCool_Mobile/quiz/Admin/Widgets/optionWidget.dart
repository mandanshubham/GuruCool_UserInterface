import 'package:flutter/material.dart';
import 'package:quiz_admin/SizeConfig.dart';

class OptionWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  OptionWidget({@required this.icon, @required this.iconColor, s});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: SizeConfig.screenHeight * 40 / 640,
            margin: EdgeInsets.only(
                left: SizeConfig.screenWidth * 10 / 360,
                top: SizeConfig.screenHeight * 10 / 640,
                right: SizeConfig.screenWidth * 26 / 360),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  top: SizeConfig.screenHeight * 5 / 640,
                  left: SizeConfig.screenWidth * 21 / 360,
                ),
                hintText: 'Tap to edit',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(SizeConfig.screenWidth * 25 / 360),
                  ),
                  borderSide: BorderSide(
                      color: Color(0xff445261),
                      width: SizeConfig.screenWidth * 1 / 360),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(SizeConfig.screenWidth * 25 / 360),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xff445261),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: SizeConfig.screenHeight * 10 / 640,
            right: SizeConfig.screenWidth * 18 / 360,
          ),
          child: Icon(
            icon,
            size: SizeConfig.screenWidth * 20 / 360,
            color: iconColor,
          ),
        )
      ],
    );
  }
}
