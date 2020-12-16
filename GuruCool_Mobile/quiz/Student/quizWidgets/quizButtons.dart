import 'package:flutter/material.dart';
import '../SizeConfig.dart';
import '../quizConstants.dart';

class QuizButtons extends StatelessWidget {
  final String text;
  final Function onPressed;
  QuizButtons({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.444,
          height: SizeConfig.screenHeight * 0.046875,
          child: RaisedButton(
            elevation: 5,
            onPressed: onPressed,
            color: colorOrangePrimary,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.screenWidth * 0.0389),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}