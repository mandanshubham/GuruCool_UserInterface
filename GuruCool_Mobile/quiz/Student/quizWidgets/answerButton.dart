import 'package:flutter/material.dart';
import '../SizeConfig.dart';

class AnswerButton extends StatelessWidget {
  final double margin;
  final String text;
  final Color buttonColor;
  final Color textColor;
  AnswerButton({
    @required this.text,
    @required this.buttonColor,
    @required this.textColor,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: SizeConfig.screenHeight * 0.0625,
            margin: EdgeInsets.only(
                left: margin,
                right: margin,
                top: SizeConfig.screenWidth * 0.012,
                bottom: SizeConfig.screenWidth * 0.012),
            child: RaisedButton(
              onPressed: () {
//TODO : Responsiveness
              },
              color: buttonColor,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(color: Color(0xff305275), width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}