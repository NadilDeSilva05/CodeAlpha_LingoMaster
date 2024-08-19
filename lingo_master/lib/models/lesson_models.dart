class VocabularyLesson {
  final String id;
  final String word;
  final String meaning;
  final String example;
  final String pronunciationUrl; // Optional: URL for audio pronunciation

  VocabularyLesson({
    required this.id,
    required this.word,
    required this.meaning,
    required this.example,
    this.pronunciationUrl = '',
  });
}

class GrammarLesson {
  final String id;
  final String topic;
  final String explanation;
  final List<String> examples;

  GrammarLesson({
    required this.id,
    required this.topic,
    required this.explanation,
    required this.examples,
  });
}

class ReadingComprehensionLesson {
  final String id;
  final String passage;
  final List<String> questions;
  final Map<String, String> answers;

  ReadingComprehensionLesson({
    required this.id,
    required this.passage,
    required this.questions,
    required this.answers,
  });
}

class SpeakingLesson {
  final String id;
  final String prompt;
  final String recordingUrl; // Optional: URL for recorded example

  SpeakingLesson({
    required this.id,
    required this.prompt,
    this.recordingUrl = '',
  });
}
