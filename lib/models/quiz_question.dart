class QuizQuestion {
  const QuizQuestion(this.text, this.choices, this.answer);

  final String text;
  final List<String> choices;
  final String answer;

  List<String> shuffledAnswers() {
    final shuffledList = List.of(choices);
    shuffledList.shuffle();
    return shuffledList;
  }
}
