import 'package:flutter/material.dart';

// Assuming you have a SpeakingLesson class with these fields
class SpeakingLesson {
  final String prompt;
  final String recordingUrl;

  SpeakingLesson({required this.prompt, required this.recordingUrl});
}

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
            Text(
              'Prompt: ${lesson.prompt}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _startRecording();
              },
              child: Text('Record Your Response'),
            ),
            SizedBox(height: 20),
            if (lesson.recordingUrl.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  _playRecording();
                },
                child: Text('Play Example Recording'),
              ),
          ],
        ),
      ),
    );
  }

  void _startRecording() {
    // Implement your recording logic here
    // For example, you could use a package like 'record' or 'audio_recorder'
    print('Start recording...');
  }

  void _playRecording() {
    // Implement your playback logic here
    // For example, you could use a package like 'audioplayers' or 'just_audio'
    print('Play recording from URL: ${lesson.recordingUrl}');
  }
}
