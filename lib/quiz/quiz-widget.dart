import 'package:flutter/material.dart';
import 'package:Karlorona/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../quiz/question-page.dart';
import 'dart:convert';

class QuizWidget extends StatefulWidget {
  final String datasetName;

  QuizWidget({this.datasetName});

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  @override
  void initState() {
    ScopedModel.of<MainModel>(context).resetCurrentQuizPage();
    super.initState();
  }

  _buildQuestionFlow(Map<String, List<dynamic>> questiondata) {
    List<QuestionPage> questionFlow = [];
    questionFlow = questiondata[widget.datasetName].map((questionset) {
      return QuestionPage(
        question: questionset['question'],
        answers: List.castFrom(questionset['answers']),
        correctAnswerIndex: questionset['correct_answer_index'],
        explanation: questionset['explanation'],
      );
    }).toList();
    return questionFlow;
  }

  @override
  Widget build(BuildContext context) {
    Future<String> questions =
        DefaultAssetBundle.of(context).loadString('assets/questions.json');

    return FutureBuilder(
      future: questions,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          Map<String, List<dynamic>> decodedData =
              Map<String, List<dynamic>>.from(json.decode(snapshot.data));
          List<QuestionPage> questionFlow = _buildQuestionFlow(decodedData);
          ScopedModel.of<MainModel>(context)
              .updateQuestionFlowLength(questionFlow.length);

          return Container(
            child: ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
              return ListView(
                children: <Widget>[
                  questionFlow[model.currentQuizPage],
                ],
              );
            }),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
