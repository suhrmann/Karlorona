import 'package:flutter/material.dart';
import '../quiz/question-page.dart';
import '../quiz/answer.dart';

class QuizFlow extends StatefulWidget {
  @override
  _QuizFlowState createState() => _QuizFlowState();
}

class _QuizFlowState extends State<QuizFlow> {
  int currentPage = 0;

  List<QuestionPage> questionFlow = [
    /// Fragen werden hier eingefügt inklusive Antwortformular
    /// Diese List wird automatisch gerendert
    QuestionPage(
      question: "What is 1+1?",
      answerForm: AnswerForm(
        form: TextField(),
      ),
    ),

    QuestionPage(
      question: "What is 2+2?",
      answerForm: AnswerForm(form: TextField()),
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
              currentPage++;
            });
          },
        )
      ],
    ));
  }
}
