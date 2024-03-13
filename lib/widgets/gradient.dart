import 'package:flutter/material.dart';

class PurpleGradient extends StatelessWidget {
  const PurpleGradient({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.deepPurple, Colors.purpleAccent])),
      child: child,
    );
  }
}
