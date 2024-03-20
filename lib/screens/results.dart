import 'package:flutter/material.dart';
import 'package:quiz_app/data/maswali_data.dart';
import '../screens/quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.onRestartQuiz, required this.selectedAnswerz});

  final void Function() onRestartQuiz;
  final List<String> selectedAnswerz;

  List<Map<String, Object>> getSummaryDataOfAnswers() {
    final List<Map<String, Object>> summary = [];

    //add for loop for printing out answers on results screen

    for (var i = 0; i < selectedAnswerz.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i],
        'correct_answer': questions[i].majibu[0],
        'selected_answer': selectedAnswerz[i],
        'no_of_questions': selectedAnswerz.length
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryDataOfAnswers();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered X out of ${selectedAnswerz.length} questions correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('Answers displayed here'),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
                onPressed: onRestartQuiz, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
