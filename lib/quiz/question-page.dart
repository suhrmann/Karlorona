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
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            alignment: Alignment.center,
            child: Title(
              color: Colors.black,
              child: Text(
                question,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          AnswerForm(
            answers: answers,
            correctAnswerIndex: correctAnswerIndex,
          )
        ],
      ),
    );
  }
}
