import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quizWidgets/reviewContainer.dart';
import 'quizWidgets.dart';
import 'SizeConfig.dart';

class QuizReview extends StatelessWidget {
  final String marksScored;

  QuizReview({@required this.marksScored});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.044,
                  top: SizeConfig.screenHeight * 0.01875),
              child: Text(
                'Quiz Review',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.05,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF36C24),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.044,
                  top: SizeConfig.screenHeight * 0.028125,
                  bottom: SizeConfig.screenHeight * 0.01875),
              child: Text(
                'Marks scored : $marksScored',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.044,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff305275),
                ),
              ),
            ),
            ReviewContainer(),
            ReviewContainer(),
            ReviewContainer(),
            ReviewContainer(),
          ],
        ),
      ),
    );
  }
}
