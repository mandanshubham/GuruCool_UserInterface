import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web/branches.dart';

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
      home: Branches(
        instituteName: 'Seemax International School, Agra',
        name: 'Ayush Bhardwaj',
        numberOfBranches: '6',
        branchCode: '1020',
        branchesName: 'Central Piublic School, Jodhpur',
        branchAddress: '221B Baker Street, London',
      ),
    );
  }
}
