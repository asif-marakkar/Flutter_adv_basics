import 'package:adv_basics/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summary});
  final List<Map<String, Object>> summary;

  bool get isCorrectAnswer {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map(
            (data) {
              return SummaryItem(item: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
