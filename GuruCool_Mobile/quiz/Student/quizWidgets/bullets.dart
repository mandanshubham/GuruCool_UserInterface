import 'package:flutter/material.dart';
import '../SizeConfig.dart';
import '../quizConstants.dart';

class Bullets extends StatelessWidget {
  final String text;
  Bullets({@required this.text});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.3056,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.01,
      ),
      child: Row(
        children: [
          Icon(
            Icons.fiber_manual_record,
            color: colorBlueText,
            size: SizeConfig.screenWidth * 0.04167,
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.0278),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.0389,
                fontWeight: FontWeight.w400,
                color: colorBlueText,
              ),
            ),
          )
        ],
      ),
    );
  }
}