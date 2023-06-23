import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 250,
            color: Color.fromARGB(128, 255, 255, 255),
          ),
          const SizedBox(
            height: 56,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 32,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt_outlined),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.roboto(
                fontSize: 16,
              ),
            ),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
