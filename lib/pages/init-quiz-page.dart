import 'package:flutter/material.dart';
import '../quiz/question-page.dart';
import '../quiz/answer.dart';

class InitQuizPage extends StatefulWidget {
  @override
  _InitQuizPageState createState() => _InitQuizPageState();
}

class _InitQuizPageState extends State<InitQuizPage> {
  int currentPage = 0;

  List<QuestionPage> questionFlow = [
    /// Fragen werden hier eingefügt inklusive Antwortformular
    /// Diese List wird automatisch gerendert
    QuestionPage(
      question: "What is 1+1?",
      answerForm: AnswerForm(
        answer1: "lol",
        answer2: "lol",
        answer3: "lol",
        answer4: "lol",
      ),
    ),
    QuestionPage(
      question: "What is 2+2?",
      answerForm: AnswerForm(
        answer1: "lol",
        answer2: "lol",
        answer3: "lol",
        answer4: "lol",
      ),
    )
  ];
  Widget buildPages() {
    return questionFlow[currentPage];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        questionFlow[currentPage],
        RaisedButton(
          child: Text("Beantworten"),
          onPressed: () {
            print("do sth");
            setState(() {
              if (currentPage + 1 < questionFlow.length) currentPage++;
            });
          },
        )
      ],
    ));
  }
}
