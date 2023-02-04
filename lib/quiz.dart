import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final int qtindex;
  final List<Map<String, Object>> qt;
  final VoidCallback ans;

  quiz({required this.qt, required this.ans, required this.qtindex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      question(
        "${qt[qtindex]['questionText']} ",
      ),
      ...(qt[qtindex]['answers'] as List<String>).map((answers) {
        return answer(ans, answers);
      }).toList()
    ]);
  }
}
