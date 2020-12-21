import 'package:flutter/material.dart';
import 'package:quiz_admin/SizeConfig.dart';
import 'package:quiz_admin/Widgets/optionWidget.dart';
import 'package:quiz_admin/quizConstants.dart';

class QuizQuestionCreator extends StatelessWidget {
  final String currentQuestionNumber;
  final String totalQuestions;

  QuizQuestionCreator({
    @required this.currentQuestionNumber,
    @required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        titleSpacing: -5,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colorOrangePrimary,
              size: SizeConfig.screenWidth * 16 / 360,
            ),
            onPressed: () {
              //TODO: Add onPressed Method
            }),
        title: Text(
          'Quiz',
          style: TextStyle(
              color: colorOrangePrimary,
              fontSize: SizeConfig.screenWidth * 18 / 360),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: [
            Container(
              height: SizeConfig.screenHeight * 30 / 640,
              width: SizeConfig.screenWidth * 120 / 360,
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 11 / 640,
                bottom: SizeConfig.screenHeight * 11 / 640,
                left: SizeConfig.screenWidth * 15 / 360,
              ),
              decoration: BoxDecoration(
                color: colorBluePrimary,
                borderRadius: BorderRadius.circular(SizeConfig.b * 500 / 360),
              ),
              child: FlatButton(
                onPressed: () {
                  //TODO: Add onPressed method
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      'Previous',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.b * 1400 / 360),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth * 92 / 360),
            Container(
              height: SizeConfig.screenHeight * 30 / 640,
              width: SizeConfig.screenWidth * 120 / 360,
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 11 / 640,
                bottom: SizeConfig.screenHeight * 11 / 640,
              ),
              decoration: BoxDecoration(
                color: colorBluePrimary,
                borderRadius: BorderRadius.circular(SizeConfig.b * 500 / 360),
              ),
              child: FlatButton(
                onPressed: () {
                  //TODO: Add onPressed method
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.b * 1400 / 360),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorPrimaryBackground,
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            SizeConfig.screenWidth * 5 / 360),
                      ),
                      margin: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 10 / 360,
                          right: SizeConfig.screenWidth * 10 / 360,
                          top: SizeConfig.screenHeight * 16 / 640,
                          bottom: SizeConfig.screenHeight * 10 / 640),
                      padding: EdgeInsets.only(left: 12, top: 9, bottom: 9),
                      child: Text(
                        'Question: $currentQuestionNumber/$totalQuestions',
                        style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 12 / 360,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: SizeConfig.screenHeight * 194 / 640,
                color: Colors.white,
                margin: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 10 / 360,
                    right: SizeConfig.screenWidth * 10 / 360,
                    bottom: SizeConfig.screenHeight * 10 / 640),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 10 / 360),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type question here...',
                  ),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight * 247 / 640,
                margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 10 / 360),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 10 / 360,
                              top: SizeConfig.screenHeight * 10 / 640,
                            ),
                            child: Text(
                              'Type options here',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: colorBluePrimary,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.screenWidth * 12 / 360,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              right: SizeConfig.screenWidth * 10 / 360,
                              top: SizeConfig.screenHeight * 10 / 640,
                            ),
                            child: Text(
                              'Select correct option',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: colorBluePrimary,
                                fontSize: SizeConfig.screenWidth * 12 / 360,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    OptionWidget(
                      icon: Icons.radio_button_unchecked,
                      iconColor: Color(0xff445261),
                    ),
                    OptionWidget(
                      icon: Icons.fiber_manual_record,
                      iconColor: Color(0xff39DC2B),
                    ),
                    OptionWidget(
                      icon: Icons.radio_button_unchecked,
                      iconColor: Color(0xff445261),
                    ),
                    OptionWidget(
                      icon: Icons.radio_button_unchecked,
                      iconColor: Color(0xff445261),
                    ),
                  ],
                ),
              ),
              Container(
                height: SizeConfig.screenHeight * 194 / 640,
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 10 / 360,
                  vertical: SizeConfig.screenHeight * 10 / 640,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 10 / 360),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Answer Description'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
