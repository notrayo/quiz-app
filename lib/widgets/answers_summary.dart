import 'package:flutter/material.dart';

class AnswersSummary extends StatelessWidget {
  const AnswersSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              children: [
                Text(((e['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(e['question'] as String),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(e['selected_answer'] as String),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        e['correct_answer'] as String,
                        style: const TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
