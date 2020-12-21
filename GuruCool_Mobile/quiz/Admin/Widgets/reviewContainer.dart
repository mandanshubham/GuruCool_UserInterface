import 'package:flutter/material.dart';
import 'package:quiz_admin/Widgets/reviewOptions.dart';

import '../SizeConfig.dart';

class ReviewContainer extends StatelessWidget {
  final String question;
  final String option;
  final String description;

  ReviewContainer({
    @required this.question,
    @required this.option,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 5 / 360),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 15 / 360,
          vertical: SizeConfig.screenWidth * 6 / 640),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(SizeConfig.screenWidth * 12 / 360),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(right: SizeConfig.screenWidth * 18 / 360),
                  child: Text(
                    question,
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 14 / 360,
                      color: Color(0xff305275),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ReviewOptions(
                    text: option,
                    icon: Icon(
                      Icons.radio_button_unchecked,
                      color: Color(0xff305275),
                      size: SizeConfig.screenWidth * 20 / 360,
                    )),
                ReviewOptions(
                  text: option,
                  icon: Icon(
                    Icons.radio_button_unchecked,
                    color: Color(0xff305275),
                    size: SizeConfig.screenWidth * 20 / 360,
                  ),
                ),
                ReviewOptions(
                  text: option,
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: SizeConfig.screenWidth * 20 / 360,
                  ),
                ),
                ReviewOptions(
                    text: option,
                    icon: Icon(
                      Icons.radio_button_unchecked,
                      color: Color(0xff305275),
                      size: SizeConfig.screenWidth * 20 / 360,
                    )),
                SizedBox(height: SizeConfig.screenHeight * 6 / 640),
                Container(
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 14 / 360,
                      color: Color(0xff305275),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight * 7.5 / 640,
            right: SizeConfig.screenWidth * 8.5 / 360,
            child: Icon(
              Icons.edit,
              size: SizeConfig.screenWidth * 15 / 360,
            ),
          )
        ],
      ),
    );
  }
}
