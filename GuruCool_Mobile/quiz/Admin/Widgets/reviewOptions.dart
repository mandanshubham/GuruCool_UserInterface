import 'package:flutter/material.dart';
import 'package:quiz_admin/SizeConfig.dart';

class ReviewOptions extends StatelessWidget {
  final String text;
  final Icon icon;

  ReviewOptions({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.screenHeight * 6 / 640),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: SizeConfig.screenWidth * 12 / 360),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 14 / 360,
                fontWeight: FontWeight.w400,
                color: Color(0xff305275),
              ),
            ),
          )
        ],
      ),
    );
  }
}
