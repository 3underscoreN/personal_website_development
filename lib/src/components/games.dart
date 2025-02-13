import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Games',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
        ),
        const SizedBox(height: 36),
        Text(
          'Coming soon...',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
