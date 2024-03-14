import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions.dart';

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

  @override
  void initState() {
    activeScreen = HomeScreen(
      startQuiz: switchScreen,
    );

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: PurpleGradient(child: activeScreen)));
  }
}
