import 'package:flutter/material.dart';

class JibuButtonWidget extends StatelessWidget {
  const JibuButtonWidget(
      {super.key, required this.jibuOption, required this.buttonOnPressed});

  final String jibuOption;
  final VoidCallback buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonOnPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 26, 8, 114),
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
      child: Align(alignment: Alignment.centerLeft, child: Text(jibuOption)),
    );
  }
}
