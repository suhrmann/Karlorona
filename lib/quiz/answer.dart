import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../scoped-model/main-model.dart';

class AnswerForm extends StatefulWidget {
  final List<String> answers;
  final int correctAnswerIndex;
  final String explanation;
  final String sourceText;
  final String sourceURL;

  AnswerForm({this.answers, this.correctAnswerIndex, this.explanation, this.sourceText, this.sourceURL});
  @override
  _AnswerFormState createState() => _AnswerFormState();
}

class _AnswerFormState extends State<AnswerForm> {
  int _selectedAnswer;
  bool _answerGiven = false;
  bool _explanationDismissed = false;

  Color UNSELECTED_COLOR = Colors.grey[800];
  Color CORRECT_ANSWERE_COLOR = Colors.green;
  Color WRONG_ANSWERE_COLOR = Colors.red;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
    if (_answerGiven) {
      // Answere already given -> do nothing
      return;
    }

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
      onPressed: () {
        Navigator.of(context).pop();
        setState(() {
          _explanationDismissed = true;
        });
      }, // Close Dialog
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Beschreibung"),
      content: Column(
        children: <Widget>[
          Text(widget.explanation),
          /*
          InkWell(
              child: new Text(widget.sourceText, style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
              onTap: () => _launchURL(widget.sourceURL)
          ),
          */
        ],
      ),
      actions: [
        okButton,
      ],
    );

    Future.delayed(const Duration(milliseconds: 1000), () {
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    });
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
        child: Column(
          children: <Widget>[

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              // physics: Disable scrolling in GridView! See https://github.com/flutter/flutter/issues/18503#issuecomment-405394352
              physics: new NeverScrollableScrollPhysics(),
              children: _buildAnswerButtons(widget.answers),
            ),

            (_answerGiven
                ? RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Erklärung anzeigen',
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.blue[100],
                  onPressed: () => showAnswereDetailsDialog()
                )
                : Container()
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
                      onPressed: _explanationDismissed ? () {
                          nextQuestion(model);
                        }
                        : null,
                    )
                  : Container());
            })

          ],
        ),
    );
  }

  void nextQuestion(model) {
    // Reset variables
    _selectedAnswer = null;
    _answerGiven = false;
    _explanationDismissed = false;

    // Next page
    model.incrementCurrentQuizPage();
  }
}
