import 'package:adv_basics/question_number.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.item});
  final Map<String, Object> item;

  @override
  Widget build(context) {
    final isCorrectAnswer = item['correct_answer'] == item['user_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(
          correctAnswer: isCorrectAnswer,
          questionIndex: item['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                item['user_answer'] as String,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 154, 103, 163),
                ),
              ),
              Text(
                item['correct_answer'] as String,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 153, 196, 201),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
