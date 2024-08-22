import 'package:flutter/material.dart';
import 'vocabulary_lesson_screen.dart';
import 'grammar_lesson_screen.dart';
import 'reading_comprehension_lesson_screen.dart';
import 'speaking_lesson_screen.dart';

class LessonDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Lesson'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLessonButton(context, 'Vocabulary Lesson', VocabularyLessonScreen()),
            SizedBox(height: 16.0),
            _buildLessonButton(context, 'Grammar Lesson', GrammarLessonScreen()),
            SizedBox(height: 16.0),
            _buildLessonButton(context, 'Reading Comprehension Lesson', ReadingComprehensionLessonScreen()),
            SizedBox(height: 16.0),
            _buildLessonButton(context, 'Speaking Lesson', SpeakingLessonScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonButton(BuildContext context, String title, Widget screen) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        primary: Colors.teal,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
