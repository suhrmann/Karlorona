import 'package:flutter/material.dart';

class AnswerForm extends StatefulWidget {
  String answer1;
  String answer2;
  String answer3;
  String answer4;

  AnswerForm({this.answer1, this.answer2, this.answer3, this.answer4});
  @override
  _AnswerFormState createState() => _AnswerFormState();
}

class _AnswerFormState extends State<AnswerForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
            "${widget.answer1},${widget.answer2},${widget.answer3},${widget.answer4}"));
  }
}
