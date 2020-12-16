import 'package:flutter/material.dart';
import 'package:quiz_ui/quizWidgets/reviewOptions.dart';
import '../SizeConfig.dart';

class ReviewContainer extends StatelessWidget {
  final String question;
  final String questionNumber;

  ReviewContainer({
    @required this.question,
    @required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(
          left: SizeConfig.screenWidth * 0.04167,
          right: SizeConfig.screenWidth * 0.04167,
          bottom: SizeConfig.screenHeight * 0.01875),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 0.033,
          vertical: SizeConfig.screenHeight * 0.01875),
      child: Column(
        children: [
          Text(
            '1. Description of the quiz the quiz Description of the quiz the quiz Description of the quiz the quiz',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
          ReviewOptions(
              text: 'Answer 1',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenWidth * 0.056,
              )),
          ReviewOptions(
            text: 'Answer 2',
            icon: Icon(
              Icons.cancel,
              color: Colors.red,
              size: SizeConfig.screenWidth * 0.056,
            ),
          ),
          ReviewOptions(
            text: 'Answer 3',
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: SizeConfig.screenWidth * 0.056,
            ),
          ),
          ReviewOptions(
              text: 'Answer 4',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenWidth * 0.056,
              )),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Text(
            'Description Description Description Description Description Description Description Description',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}