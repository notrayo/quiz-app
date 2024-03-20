import 'package:flutter/material.dart';
import 'package:quiz_app/data/maswali_data.dart';
import 'package:quiz_app/models/maswali_model.dart';
import 'package:quiz_app/screens/questions.dart';
import 'package:quiz_app/screens/results.dart';

import '../widgets/gradient.dart';
import 'home.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  //outline logic for switching screens

  late Widget activeScreen;

  //logic for answered questions
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = HomeScreen(
      startQuiz: switchScreen,
    );

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onChosenAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    //making sure the sum of answers match the sum of questions
    if (selectedAnswers.length == questions.length) {
      setState(() {
        //activeScreen = HomeScreen(startQuiz: switchScreen);
        activeScreen = ResultsScreen(
          onRestartQuiz: restartQuiz,
          selectedAnswerz: selectedAnswers,
        );

        selectedAnswers = [];
      });
    }
  }

  //restart quiz

  void restartQuiz() {
    setState(() {
      activeScreen = QuestionsScreen(onChosenAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: PurpleGradient(child: activeScreen)));
  }
}
