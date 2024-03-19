import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

//import the questions
import '../data/maswali_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onChosenAnswer});

  final void Function(String answer) onChosenAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // logic for changing question

  var currentSwaliIndex = 0;

  void answerSwali(String selectedAnswer) {
    // currentSwaliIndex = currentSwaliIndex + 1;
    //currentSwaliIndex += 1;
    // currentSwaliIndex++;

    widget.onChosenAnswer(selectedAnswer);

    setState(() {
      currentSwaliIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentSwali = questions[currentSwaliIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SwaliWidget(swaliText: currentSwali.swali),

            const SizedBox(
              height: 30,
            ),
            // using a map to automatically create the question widgets
            ...currentSwali.getShuffledMajibu().map((e) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  JibuButtonWidget(
                      jibuOption: e,
                      buttonOnPressed: () {
                        answerSwali(e);
                      }),
                  const SizedBox(
                    height: 25,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
