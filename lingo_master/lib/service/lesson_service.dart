import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/lesson_models.dart';

class LessonService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch Vocabulary Lessons
  Stream<List<VocabularyLesson>> getVocabularyLessons() {
    return _firestore.collection('vocabulary_lessons').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return VocabularyLesson(
          id: doc.id,
          word: data['word'] ?? '',
          meaning: data['meaning'] ?? '',
          example: data['example'] ?? '',
          pronunciationUrl: data['pronunciationUrl'] ?? '',
        );
      }).toList();
    });
  }

  // Fetch Grammar Lessons
  Stream<List<GrammarLesson>> getGrammarLessons() {
    return _firestore.collection('grammar_lessons').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return GrammarLesson(
          id: doc.id,
          topic: data['topic'] ?? '',
          explanation: data['explanation'] ?? '',
          examples: List<String>.from(data['examples'] ?? []),
        );
      }).toList();
    });
  }

  // Fetch Reading Comprehension Lessons
  Stream<List<ReadingComprehensionLesson>> getReadingComprehensionLessons() {
    return _firestore.collection('reading_comprehension_lessons').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return ReadingComprehensionLesson(
          id: doc.id,
          passage: data['passage'] ?? '',
          questions: List<String>.from(data['questions'] ?? []),
          answers: Map<String, String>.from(data['answers'] ?? {}),
        );
      }).toList();
    });
  }

  // Fetch Speaking Lessons
  Stream<List<SpeakingLesson>> getSpeakingLessons() {
    return _firestore.collection('speaking_lessons').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return SpeakingLesson(
          id: doc.id,
          prompt: data['prompt'] ?? '',
          recordingUrl: data['recordingUrl'] ?? '',
        );
      }).toList();
    });
  }
}
