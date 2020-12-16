import 'package:flutter/material.dart';
import 'package:quiz_ui/quizWidgets.dart';
import 'package:quiz_ui/quizWidgets/quizButtons.dart';
import 'SizeConfig.dart';

class QuizResult extends StatelessWidget {
  final String quizTitle;
  final String marksScored;
  final String maxMarks;

  QuizResult({
    @required this.quizTitle,
    @required this.marksScored,
    @required this.maxMarks,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quizTitle,
              style: TextStyle(
                  color: Color(0xff305275),
                  fontSize: SizeConfig.screenWidth * 0.065,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125 * 2),
            Container(
              child: Image.asset('images/quiz_result.png'),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125 * 3),
            Text('Your Score'),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight * 0.0066),
              child: Text(
                marksScored,
                style: TextStyle(
                  color: Color(0xffF36C24),
                  fontSize: SizeConfig.screenWidth * 0.111,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text('Out of $maxMarks'),
            SizedBox(height: SizeConfig.screenHeight * 0.096875),
            QuizButtons(
              text: 'Review',
              onPressed: () {
//TODO: Add required responsiveness
              },
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.021875),
            QuizButtons(
              text: 'Done',
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
