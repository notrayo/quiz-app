import 'package:flutter/material.dart';
import '../screens/quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.onRestartQuiz});

  final void Function() onRestartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X questions correctly'),
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
