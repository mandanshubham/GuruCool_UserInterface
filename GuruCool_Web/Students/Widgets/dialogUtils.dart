import 'package:cool/Colors.dart';
import 'package:cool/SizeConfig.dart';
import 'package:flutter/material.dart';

class DialogUtil extends StatefulWidget {
  @override
  _DialogUtilState createState() => _DialogUtilState();
}

class _DialogUtilState extends State<DialogUtil> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 30 / 900,
            child: SwitchListTile(
              activeColor: colorBluePrimary,
              title: Text(
                'Paid in Installments',
                style: TextStyle(
                  color: Color(0xff848484),
                ),
              ),
              value: _isVisible,
              onChanged: (bool value) {
                setState(() {
                  _isVisible = value = !_isVisible;
                });
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 5 / 900,
          ),
          Visibility(
            visible: _isVisible,
            child: Column(
              children: [
                Container(
                  height: SizeConfig.screenHeight * 30 / 900,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 1',
                      style: TextStyle(
                        color: Color(0xff848484),
                      ),
                    ),
                    value: _isVisible,
                    onChanged: (bool value) {
                      //Todo:
                    },
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight * 30 / 900,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 2',
                      style: TextStyle(
                        color: Color(0xff848484),
                      ),
                    ),
                    value: _isVisible,
                    onChanged: (bool value) {
                      //Todo:
                    },
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight * 30 / 900,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 3',
                      style: TextStyle(
                        color: Color(0xff848484),
                      ),
                    ),
                    value: !_isVisible,
                    onChanged: (bool value) {
                      //Todo:
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
