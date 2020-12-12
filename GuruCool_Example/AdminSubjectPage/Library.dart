import 'package:coach_app/NewUI/books-page2.dart';
import 'package:coach_app/Utils/Colors.dart';
import 'package:coach_app/Utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  //Using private variable with camelCase
  final TextEditingController _searchInputController = TextEditingController();
  SizeConfig _size;

  @override
  Widget build(BuildContext context) {
    _size = SizeConfig(context);
    return Container(
      color: Color(0xffE5E5E5),
      child: Column(
        children: [
          SizedBox(height: _size.v * 4),
          Container(
            width: _size.screenWidth * 0.85,
            height: _size.screenHeight * 0.06,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: _size.b * 0.8,
                    blurRadius: _size.b * 1.5,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(_size.b * 7)),
            child: Row(
              children: [
                SizedBox(width: _size.b * 2.2),
                Icon(Icons.search, color: GuruCoolLightColor.primaryColor),
                SizedBox(
                  width: _size.b * 2,
                ),
                Container(
                  color: Colors.white,
                  width: _size.b * 68,
                  child: TextField(
                    controller: _searchInputController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search books by their name',
                        hintStyle: TextStyle(
                            fontSize: _size.b * 3.5,
                            color: Color.fromRGBO(140, 140, 140, 0.71),
                            fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: _size.b * 6.5),
          Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: _size.b * 4, vertical: _size.v * 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(_size.b * 2.5)),
                    elevation: 7,
                    child: Stack(
                      children: [
                        CustomPaint(
                          size: Size(_size.b * 200, _size.b * 100),
                          painter: RPSCustomPainter(),
                        ),
                        Positioned(
                          top: _size.b * 2.5,
                          left: _size.b * 2.5,
                          child: Text(
                            'Title',
                            style: TextStyle(
                                color: Colors.white, fontSize: _size.b * 4.2),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    icon: Icon(Icons.star_border_outlined),
                                    color: Color(0xff999999),
                                    onPressed: () => print('Star')),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    color: Color(0xff3F586E),
                                    iconSize: _size.b * 6.2,
                                    onPressed: () {
                                      print('Forward');
                                    })
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
