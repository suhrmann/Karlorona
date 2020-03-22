import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class AnswerForm extends StatefulWidget {
  final List<String> answers;
  final int correctAnswerIndex;
  final String explanation;

  AnswerForm({this.answers, this.correctAnswerIndex, this.explanation});
  @override
  _AnswerFormState createState() => _AnswerFormState();
}

class _AnswerFormState extends State<AnswerForm> {
  int _selectedAnswer;
  bool _answerGiven = false;

  Color UNSELECTED_COLOR = Colors.grey[800];
  Color CORRECT_ANSWERE_COLOR = Colors.green;
  Color WRONG_ANSWERE_COLOR = Colors.red;

  _buildAnswerButtons(List<String> answers) {
    List<Widget> answerButtons = [];
    answerButtons = List.generate(
      answers.length,
      (index) => Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
        child: RaisedButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          child: Text(
            answers[index],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          color: getColor(index),
          onPressed: () {
            answerSelected(index);
          },
        ),
      ),
    );
    return answerButtons;
  }

  answerSelected(int selectedAnswerIndex) {
    // Store selected answer
    setState(() {
      _selectedAnswer = selectedAnswerIndex;
      print("$selectedAnswerIndex");
    });
    setState(() {
      _answerGiven = true;
      print("answer given: $_answerGiven");
    });

    print('Antwort #${this._selectedAnswer}, correct: ${widget.correctAnswerIndex} - answerGiven: ${_answerGiven}');

    showAnswereDetailsDialog();
  }

  void showAnswereDetailsDialog() {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("Verstanden"),
      onPressed: () { Navigator.of(context).pop(); }, // Close Dialog
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Beschreibung"),
      content: Text(widget.explanation),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Color getColor(int answerIndex) {
    // No answer given
    if (!_answerGiven) {
      // No answer given yet
      return UNSELECTED_COLOR;
    }

    // Answered
    if (answerIndex == widget.correctAnswerIndex) {
      // This is the correct answer
      return animatedRightAnswer();
    } else if (answerIndex == this._selectedAnswer) {
      // Note the correct, but selected answere -> WRONG
      return animatedWrongAnswer();
    } else {
      // Neither correct nor selected -> Nothing changed
      return UNSELECTED_COLOR;
    }
  }

  animatedRightAnswer() {
    return CORRECT_ANSWERE_COLOR;
  }

  animatedWrongAnswer() {
    return WRONG_ANSWERE_COLOR;
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

            ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
              // Next question button
              return (_answerGiven
                  ? RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Nächste Frage',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        nextQuestion(model);
                      },
                    )
                  : Container());
            })
          ],
        ),
      ),
    );
  }

  void nextQuestion(model) {
    // Reset variables
    _selectedAnswer = null;
    _answerGiven = false;

    // Next page
    model.incrementCurrentQuizPage();
  }
}
