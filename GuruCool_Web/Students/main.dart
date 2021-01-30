import 'package:cool/students.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: Students(
        instituteName: 'Institute Name',
        email: 'mandanshubham@gmail.com',
        totalNumberOfStudents: '200',
        courseName: 'Flutter',
        name: 'Ayush Bhardwaj',
        studentName: 'Shubham Mandan',
      ),
    );
  }
}
