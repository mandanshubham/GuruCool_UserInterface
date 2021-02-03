import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:me/Navigation%20Rail/navRail.dart';
import 'package:me/static.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Static(),
    );
  }
}
