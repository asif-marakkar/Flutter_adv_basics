import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/launch_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';

enum ActiveScreen { launch, questions, result }

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  ActiveScreen activeScreen = ActiveScreen.launch;
  final List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = ActiveScreen.questions;
    });
  }

  void onRestart() {
    selectedAnswers.clear();
    switchScreen();
  }

  void setAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ActiveScreen.result;
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget;
    switch (activeScreen) {
      case ActiveScreen.questions:
        screenWidget = QuestionsScreen(setAnswers: setAnswers);
      case ActiveScreen.result:
        screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          restartQuiz: onRestart,
        );
      default:
        screenWidget = LaunchScreen(startQuiz: switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
