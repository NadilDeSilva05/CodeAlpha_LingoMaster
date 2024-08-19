import 'package:flutter/material.dart';
import 'screens/lesson_dashboard.dart';

void main() {
  runApp(LingoMaster());
}

class LingoMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LingoMaster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LessonDashboard(),
    );
  }
}
