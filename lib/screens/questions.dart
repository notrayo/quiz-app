import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

//import the questions
import '../data/maswali_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

final currentSwali = questions[0];

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 60,
          // ),
          SwaliWidget(swaliText: currentSwali.swali),
          const SizedBox(
            height: 50,
          ),
          JibuButtonWidget(
              jibuOption: currentSwali.majibu[0], buttonOnPressed: () {}),
          const SizedBox(
            height: 25,
          ),
          JibuButtonWidget(
              jibuOption: currentSwali.majibu[1], buttonOnPressed: () {}),
          const SizedBox(
            height: 25,
          ),
          JibuButtonWidget(
              jibuOption: currentSwali.majibu[2], buttonOnPressed: () {}),
          const SizedBox(
            height: 25,
          ),
          JibuButtonWidget(
              jibuOption: currentSwali.majibu[3], buttonOnPressed: () {}),
          // const SizedBox(height: 25),
          // JibuButtonWidget(
          //     jibuOption: currentSwali.majibu[4], buttonOnPressed: () {})
        ],
      ),
    );
  }
}
