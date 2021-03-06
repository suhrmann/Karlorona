import 'package:flutter/material.dart';

import 'answer.dart';

class QuestionPage extends StatelessWidget {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  final String explanation;
  final String sourceText;
  final String sourceURL;

  QuestionPage(
      {this.question, this.answers, this.correctAnswerIndex, this.explanation, this.sourceText, this.sourceURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Question
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Card(
                color: Colors.blue[100],
                child: InkWell(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            question,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
              ),
            ),

            AnswerForm(
              answers: answers,
              correctAnswerIndex: correctAnswerIndex,
              explanation: explanation,
              sourceText: sourceText,
              sourceURL: sourceURL,
            )
          ],
        ),
      ),
    );
  }
}
