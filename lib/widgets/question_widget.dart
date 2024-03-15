import 'package:flutter/material.dart';

class SwaliWidget extends StatelessWidget {
  const SwaliWidget({super.key, required this.swaliText});

  final String swaliText;

  @override
  Widget build(BuildContext context) {
    return Text(
      swaliText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
