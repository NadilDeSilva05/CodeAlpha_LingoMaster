import 'package:flutter/material.dart';
import '../models/lesson_models.dart';

class VocabularyLessonScreen extends StatelessWidget {
  final VocabularyLesson lesson;

  VocabularyLessonScreen({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson.word)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Meaning: ${lesson.meaning}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Example: ${lesson.example}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            if (lesson.pronunciationUrl.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  // Add code to play pronunciation audio
                },
                child: Text('Play Pronunciation'),
              ),
          ],
        ),
      ),
    );
  }
}
