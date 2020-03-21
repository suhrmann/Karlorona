import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class AnswerForm extends StatefulWidget {
  final List<String> answers;

  AnswerForm({this.answers});
  @override
  _AnswerFormState createState() => _AnswerFormState();
}

class _AnswerFormState extends State<AnswerForm> {
  int _selectedAnswer;
  Color _selectedColor = Colors.blue;
  Color _unselectedColor = Colors.grey[300];

  _buildAnswerButtons(List<String> answers) {
    List<Widget> answerButtons = [];
    answerButtons = List.generate(
      answers.length,
      (index) => Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 30),
        child: RaisedButton(
          child: Text(answers[index]),
          color: _selectedAnswer == index ? _selectedColor : _unselectedColor,
          onPressed: () {
            setState(() {
              _selectedAnswer = index;
              print("$index");
            });
          },
        ),
      ),
    );
    return answerButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: _buildAnswerButtons(widget.answers),
          ),
          ScopedModelDescendant<MainModel>(
              builder: (BuildContext context, Widget child, MainModel model) {
            return RaisedButton(
              child: Text("Beantworten"),
              onPressed: () {
                if (model.currentQuizPage + 1 < model.questionFlowLength)
                  model.incrementCurrentQuizPage();
              },
            );
          }),
        ],
      ),
    );
  }
}
