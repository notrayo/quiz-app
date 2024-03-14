import 'package:flutter/material.dart';
//import 'package:quiz_app/screens/quiz1.dart';
import 'package:quiz_app/widgets/gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.startQuiz});

  //initialize the startquiz function in quiz.dart

  final void Function() startQuiz;

  // Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            color: const Color.fromARGB(162, 255, 255, 255),
            width: 320,
          ),
          const Text(
            'Welcome to my Quiz App',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 75, 43, 136),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 12.5, horizontal: 15)),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.play_arrow_outlined),
          )
        ],
      ),
    );
  }
}
