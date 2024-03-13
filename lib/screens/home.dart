import 'package:flutter/material.dart';
import 'package:quiz_app/screens/screen1.dart';
import 'package:quiz_app/widgets/gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PurpleGradient(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/quiz-logo.png',
                color: Color.fromARGB(162, 255, 255, 255),
                width: 320,
              ),
              const Text(
                'Welcome to my Quiz App',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Screen2())));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 43, 136),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.5, horizontal: 15)),
                label: const Text('Start Quiz'),
                icon: const Icon(Icons.play_arrow_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
