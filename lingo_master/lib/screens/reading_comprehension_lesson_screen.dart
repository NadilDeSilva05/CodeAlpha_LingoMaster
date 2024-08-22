import 'package:flutter/material.dart';


class ReadingComprehensionLessonScreen extends StatelessWidget {
  

  ReadingComprehensionLessonScreen({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading Comprehension')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Passage:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(lesson.passage, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('Questions:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...lesson.questions.map((question) => Text('• $question', style: TextStyle(fontSize: 16))),
            // Add more widgets to take user answers and compare with correct answers
          ],
        ),
      ),
    );
  }
}
