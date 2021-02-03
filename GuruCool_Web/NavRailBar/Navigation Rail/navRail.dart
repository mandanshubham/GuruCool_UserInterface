import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:me/Utils/sizeConfig.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Row(children: [
        Container(
          width: SizeConfig.screenWidth * 67 / 1440,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: SizeConfig.screenHeight * 15 / 900,
                offset: Offset(0, 2),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Color(0xff2e3842),
                Color(0xff305275),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: NavigationRail(
            selectedIconTheme: IconThemeData(
              color: Colors.white,
              opacity: 1,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.white,
              opacity: 1,
            ),
            backgroundColor: Colors.transparent,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              radius: SizeConfig.screenWidth * 24 / 1440,
            ),
            labelType: NavigationRailLabelType.none,
            destinations: [
              NavigationRailDestination(
                icon: Icon(
                  Icons.view_week,
                  size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  color: Colors.white,
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    border: Border(
                      left: BorderSide(
                        width: SizeConfig.screenWidth * 5 / 1440,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.screenHeight * 50 / 900,
                  width: SizeConfig.screenWidth * 67 / 1440,
                  child: Icon(
                    Icons.view_week,
                    size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                    color: Colors.white,
                  ),
                ),
                label: Container(),
              ),
              NavigationRailDestination(
                icon: Icon(
                  MdiIcons.viewGrid,
                  size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    border: Border(
                      left: BorderSide(
                        width: SizeConfig.screenWidth * 5 / 1440,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.screenHeight * 50 / 900,
                  width: SizeConfig.screenWidth * 67 / 1440,
                  child: Icon(
                    MdiIcons.viewGrid,
                    size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  ),
                ),
                label: Container(),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.account_balance,
                  size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  color: Colors.white,
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    border: Border(
                      left: BorderSide(
                        width: SizeConfig.screenWidth * 5 / 1440,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.screenHeight * 50 / 900,
                  width: SizeConfig.screenWidth * 67 / 1440,
                  child: Icon(
                    Icons.account_balance,
                    size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  ),
                ),
                label: Container(),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.dehaze,
                  size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  color: Colors.white,
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    border: Border(
                      left: BorderSide(
                        width: SizeConfig.screenWidth * 5 / 1440,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.screenHeight * 50 / 900,
                  width: SizeConfig.screenWidth * 67 / 1440,
                  child: Icon(
                    Icons.dehaze,
                    size: SizeConfig.screenHeight * 23 / 900 * 1.3,
                  ),
                ),
                label: Container(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text('selectedIndex: $_selectedIndex'),
          ),
        ),
      ]),
    );
  }
}
