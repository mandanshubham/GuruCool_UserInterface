import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quizConstants.dart';
import 'package:quiz_ui/quizWidgets/bullets.dart';
import 'package:quiz_ui/quizWidgets/quizButtons.dart';
import 'SizeConfig.dart';

class QuizDescription extends StatelessWidget {
  final String quizTitle;
  final String quizDescription;
  final String maxMarks;
  final String numberOfQuestions;
  final String quizTime;

  QuizDescription({
    @required this.quizTitle,
    @required this.quizDescription,
    @required this.maxMarks,
    @required this.numberOfQuestions,
    @required this.quizTime,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/question_mark.png'),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.0328125),
            Text(
              quizTitle,
              style: TextStyle(
                  color: colorBlueText,
                  fontSize: SizeConfig.screenWidth * 0.056,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.0234375),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.056),
              child: Text(
                quizDescription,
                style: TextStyle(
                    color: colorBlueText,
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125),
            Bullets(text: numberOfQuestions),
            Bullets(text: maxMarks),
            Bullets(text: quizTime),
            SizedBox(height: SizeConfig.screenHeight * 0.15625),
            QuizButtons(
              text: 'Start Attempt',
              onPressed: () {
//TODO: Add required responsiveness
              },
            ),
          ],
        ),
      ),
    );
  }
}
