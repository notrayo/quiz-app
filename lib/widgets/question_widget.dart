import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwaliWidget extends StatelessWidget {
  const SwaliWidget({super.key, required this.swaliText});

  final String swaliText;

  @override
  Widget build(BuildContext context) {
    return Text(
      swaliText,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
    );
    //
  }
}
