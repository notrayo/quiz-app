import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/gradient.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PurpleGradient(
          child: Center(
        child: Text('new screen'),
      )),
    );
  }
}
