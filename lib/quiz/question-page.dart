import 'package:flutter/material.dart';

import 'answer.dart';

class QuestionPage extends StatelessWidget {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  QuestionPage({this.question, this.answers, this.correctAnswerIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Title(
              color: Colors.black,
              child: Text(question),
            ),
          ),
          AnswerForm(
            answers: answers,
          )
        ],
      ),
    );
  }
}
