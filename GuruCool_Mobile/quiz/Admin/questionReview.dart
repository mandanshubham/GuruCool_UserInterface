import 'package:flutter/material.dart';
import 'package:quiz_admin/SizeConfig.dart';
import 'package:quiz_admin/quizConstants.dart';
import 'Widgets/reviewContainer.dart';

class QuestionReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: colorPrimaryBackground,
      appBar: AppBar(
        elevation: 10,
        title: Text(
          'Questions Review',
          style: TextStyle(
              color: colorOrangePrimary,
              fontSize: SizeConfig.screenWidth * 18 / 360,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ReviewContainer(
                    question: 'q',
                    option: 'o',
                    description: 'd',
                  );
                }),
            SizedBox(height: SizeConfig.screenHeight * 10 / 640),
            MaterialButton(
              onPressed: () {
                //TODO: Add onPressed method
              },
              color: Color(0xffF36C24),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(SizeConfig.screenWidth * 5 / 360),
              ),
              elevation: 7,
              minWidth: SizeConfig.screenWidth * 160 / 360,
              height: SizeConfig.screenHeight * 30 / 640,
              child: Text(
                'Upload Quiz',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 14 / 360,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
