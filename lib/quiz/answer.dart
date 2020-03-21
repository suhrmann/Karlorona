import 'package:flutter/material.dart';

class AnswerForm extends StatefulWidget {
  Widget form;

  AnswerForm({this.form});
  @override
  _AnswerFormState createState() => _AnswerFormState();
}

class _AnswerFormState extends State<AnswerForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.form,
    );
  }
}
