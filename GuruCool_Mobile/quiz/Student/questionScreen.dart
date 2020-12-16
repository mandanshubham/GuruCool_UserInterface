import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quizConstants.dart';
import 'package:quiz_ui/quizWidgets/answerButton.dart';
import 'SizeConfig.dart';

class QuestionScreen extends StatelessWidget {
  final String currentQuestion;
  final String currentQuestionNumber;
  final String totalNumberOfQuestions;
  final String timeRemaining;
  final String answerDescription;

  QuestionScreen({
    @required this.currentQuestion,
    @required this.currentQuestionNumber,
    @required this.totalNumberOfQuestions,
    @required this.timeRemaining,
    @required this.answerDescription,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(
              top: SizeConfig.screenHeight * 0.0234375,
              bottom: SizeConfig.screenHeight * 0.0234375,
              right: SizeConfig.screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Next',
                style: TextStyle(
                    color: Color(0xff305275),
                    fontSize: SizeConfig.screenWidth * 0.05,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.navigate_next,
                size: SizeConfig.screenWidth * 0.0833,
                color: Color(0xff305275),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    minHeight: SizeConfig.screenHeight * 0.4375, //0.4375
                    maxHeight: double.infinity,
                  ),
                  color: Color(0xff305275),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.04167,
                                  top: SizeConfig.screenHeight * 0.0234375),
                              child: Text(
                                '$currentQuestionNumber/$totalNumberOfQuestions',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.screenWidth * 0.044,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: SizeConfig.screenWidth * 0.04167,
                                  top: SizeConfig.screenHeight * 0.0234375),
                              child: Text(
                                timeRemaining,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.screenWidth * 0.0444,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.1056,
                              right: SizeConfig.screenWidth * 0.1056,
                              top: SizeConfig.screenWidth * 0.13125,
                              bottom: SizeConfig.screenWidth * 0.03125),
                          child: Text(
                            currentQuestion,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.screenWidth * 0.0444,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03125),
                AnswerButton(
                  text: 'Answer 1',
                  buttonColor: disabledColor,
                  textColor: disabledTextColor,
                  margin: SizeConfig.screenWidth * 0.0899,
                ),
                AnswerButton(
                  text: 'Answer 2',
                  buttonColor: incorrectAnswerColor,
                  textColor: textColor,
                  margin: SizeConfig.screenWidth * 0.0899,
                ),
                AnswerButton(
                  text: 'Answer 3',
                  buttonColor: correctAnswerColor,
                  textColor: textColor,
                  margin: SizeConfig.screenWidth * 0.07,
                ),
                AnswerButton(
                  text: 'Answer 4',
                  buttonColor: disabledColor,
                  textColor: disabledTextColor,
                  margin: SizeConfig.screenWidth * 0.089,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03125),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.089,
                      right: SizeConfig.screenWidth * 0.089),
                  child: Text(
                    answerDescription,
                    style: TextStyle(
                      color: Color(0xff305275),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
