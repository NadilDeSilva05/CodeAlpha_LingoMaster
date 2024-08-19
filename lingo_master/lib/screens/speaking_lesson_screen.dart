import 'package:flutter/material.dart';
import '../models/lesson_models.dart';

class SpeakingLessonScreen extends StatelessWidget {
  final SpeakingLesson lesson;

  SpeakingLessonScreen({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Speaking Practice')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Prompt: ${lesson.prompt}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add code to start recording user's speech
              },
              child: Text('Record Your Response'),
            ),
            SizedBox(height: 20),
            if (lesson.recordingUrl.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  // Add code to play example recording
                },
                child: Text('Play Example Recording'),
              ),
          ],
        ),
      ),
    );
  }
}
