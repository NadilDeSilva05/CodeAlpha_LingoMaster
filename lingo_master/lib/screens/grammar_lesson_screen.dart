import 'package:flutter/material.dart';
import '../models/lesson_models.dart';

class GrammarLessonScreen extends StatelessWidget {
  final GrammarLesson lesson;

  GrammarLessonScreen({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson.topic)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explanation: ${lesson.explanation}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Examples:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...lesson.examples.map((example) => Text('• $example', style: TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
