//Create a simple quiz application using oop that allows users to play and view their score.
import 'dart:io';

class Question {
  String text;
  List<String> options;
  int correct;
  Question(this.text, this.options, this.correct);
}

class Quiz {
  List<Question> questions;
  int score = 0;
  Quiz(this.questions);

  void start() {
    print(" Welcome to the Quick Quiz!\n");

    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("Q${i + 1}. ${q.text}");
      for (int j = 0; j < q.options.length; j++) {
        print("  ${j + 1}. ${q.options[j]}");
      }

      stdout.write("Your answer: ");
      int? ans = int.tryParse(stdin.readLineSync() ?? "");

      if (ans != null && ans - 1 == q.correct) {
        print(" Correct!\n");
        score++;
      } else {
        print(" Oops! Correct answer: ${q.options[q.correct]}\n");
      }
    }

    print(" Quiz Over! Your Score: $score / ${questions.length}");
  }
}

void main() {
  var q1 = Question("What is the capital of France?", ["Paris", "London", "Berlin", "Rome"], 0);
  var q2 = Question("2 + 2 = ?", ["3", "4", "5", "6"], 1);
  var q3 = Question("Which language is used in Flutter?", ["Java", "Dart", "Kotlin", "Swift"], 1);

  var quiz = Quiz([q1, q2, q3]);
  quiz.start();
}
