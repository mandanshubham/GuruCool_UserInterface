import 'package:flutter/material.dart';
import 'package:students/Utils/SizeConfig.dart';
import 'package:students/Utils/constants.dart';

class DialogUtils extends StatefulWidget {
  @override
  _DialogUtilsState createState() => _DialogUtilsState();
}

class _DialogUtilsState extends State<DialogUtils> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 22,
            child: SwitchListTile(
              activeColor: colorBluePrimary,
              title: Text(
                'Paid in Installments',
                style: TextStyle(
                  color: Color(0xff1C1C1C),
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
            height: SizeConfig.screenHeight * 0.026,
          ),
          Visibility(
            visible: _isVisible,
            child: Column(
              children: [
                Container(
                  height: 22,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 1',
                      style: TextStyle(
                        color: Color(0xff1C1C1C),
                      ),
                    ),
                    value: _isVisible,
                    onChanged: (bool value) {
                      //Todo:
                    },
                  ),
                ),
                Container(
                  height: 22,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 2',
                      style: TextStyle(
                        color: Color(0xff1C1C1C),
                      ),
                    ),
                    value: _isVisible,
                    onChanged: (bool value) {
                      //Todo:
                    },
                  ),
                ),
                Container(
                  height: 22,
                  child: CheckboxListTile(
                    activeColor: colorBluePrimary,
                    title: Text(
                      'Installment 3',
                      style: TextStyle(
                        color: Color(0xff1C1C1C),
                      ),
                    ),
                    value: _isVisible,
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
