import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // const SizedBox(
              //   height: 70,
              // ),
              Image.asset('assets/quiz-logo.png'),
              const Text(
                'Welcome to my Quiz App',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 43, 136),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.5, horizontal: 15)),
                child: const Text('Start Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
