import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final Function() selecthandler;
  final String answertext;

  answer(this.selecthandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        onPressed: selecthandler,
        child: Text(answertext),
        color: Colors.blue[700],
        textColor: Colors.white,
      ),
    );
  }
}
