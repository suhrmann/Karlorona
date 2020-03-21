import 'package:flutter/material.dart';

import 'answer.dart';

class QuestionPage extends StatelessWidget {
  String question;
  AnswerForm answerForm;

  QuestionPage({this.question, this.answerForm});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Title(
            color: Colors.black,
            child: Text(question),
          ),
          answerForm,
        ],
      ),
    );
  }
}
