import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class AnswerForm extends StatefulWidget {
  final List<String> answers;
  final int correctAnswerIndex;

  AnswerForm({this.answers, this.correctAnswerIndex});
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
          child: Text(
            answers[index],
            textAlign: TextAlign.center,
          ),
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

  SnackBar _snackBar({bool success}) {
    return success
        ? SnackBar(
            content: Row(
              children: <Widget>[
                Icon(Icons.check),
                SizedBox(width: 20),
                Text("Korrekt!"),
              ],
            ),
            duration: Duration(seconds: 1),
          )
        : SnackBar(
            content: Row(
              children: <Widget>[
                Icon(Icons.warning),
                SizedBox(width: 20),
                Text("Falsch!"),
              ],
            ),
            duration: Duration(seconds: 1),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: _buildAnswerButtons(widget.answers),
            ),
/*             Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: _buildAnswerButtons(widget.answers),
            ), */
            ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
              return RaisedButton(
                child: Text("Beantworten"),
                onPressed: () {
                  if (_selectedAnswer == widget.correctAnswerIndex) {
                    Scaffold.of(context).showSnackBar(_snackBar(success: true));
                    if (model.currentQuizPage + 1 < model.questionFlowLength) {
                      _selectedAnswer = null;
                      model.incrementCurrentQuizPage();
                    } else {
                      //Handle last Quiz page
                    }
                  } else {
                    Scaffold.of(context)
                        .showSnackBar(_snackBar(success: false));
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
