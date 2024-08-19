import 'package:flutter/material.dart';
import 'vocabulary_lesson_screen.dart';
import 'grammar_lesson_screen.dart';
import 'reading_comprehension_lesson_screen.dart';
import 'speaking_lesson_screen.dart';
import '../models/lesson_models.dart';

class LessonDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example lessons, you should fetch these from Firestore
    final vocabularyLesson = VocabularyLesson(id: '1', word: 'Example', meaning: 'A representative form or pattern', example: 'This is an example sentence.');
    final grammarLesson = GrammarLesson(id: '1', topic: 'Present Simple Tense', explanation: 'The present simple tense is used to describe habits, unchanging situations, general truths, and fixed arrangements.', examples: ['She reads every day.', 'The sun rises in the east.']);
    final readingLesson = ReadingComprehensionLesson(id: '1', passage: 'Once upon a time...', questions: ['What is the story about?'], answers: {'What is the story about?': 'It is about...'});
    final speakingLesson = SpeakingLesson(id: '1', prompt: 'Describe your favorite book.');

    return Scaffold(
      appBar: AppBar(title: Text('Select a Lesson')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Vocabulary Lesson'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VocabularyLessonScreen(lesson: vocabularyLesson))),
          ),
          ListTile(
            title: Text('Grammar Lesson'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GrammarLessonScreen(lesson: grammarLesson))),
          ),
          ListTile(
            title: Text('Reading Comprehension Lesson'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ReadingComprehensionLessonScreen(lesson: readingLesson))),
          ),
          ListTile(
            title: Text('Speaking Lesson'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SpeakingLessonScreen(lesson: speakingLesson))),
          ),
        ],
      ),
    );
  }
}
