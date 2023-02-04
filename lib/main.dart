import 'package:flutter/material.dart';
import 'package:newapp/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MaterialApp(
    home: newapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class newapp extends StatefulWidget {
  const newapp({super.key});

  @override
  State<newapp> createState() => _newappState();
}

class _newappState extends State<newapp> {
  var _qtindex = 0;

  void _ans() {
    //  var aBool = true;
    //  aBool = false;

    setState(() {
      _qtindex = _qtindex + 1;
    });
    if (_qtindex < _qt.length) {
      print('we have more qts');
    } else {
      print('no more qts ');
    }
    print(_qtindex);
  }

  static const _qt = [
    {
      'questionText': 'what is your fav color?',
      'answers': ['black', 'red', 'blue', 'white'],
    },
    {
      'questionText': 'what is your fav animal?',
      'answers': ['elephant', 'tiger', 'lion', 'deer'],
    },
    {
      'questionText': 'what is your fav hero?',
      'answers': [
        'rajesh dai',
        'rajaram poudel',
        'depak raj giri',
        'selmon bhai'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new app')),
      body: _qtindex < _qt.length
          ? quiz(
              ans: _ans,
              qtindex: _qtindex,
              qt: _qt,
            )
          : result(),
    );
  }
}
