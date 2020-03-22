import 'package:flutter/material.dart';

import '../quiz/quiz-widget.dart';

class InitQuizPage extends StatelessWidget {
  const InitQuizPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizWidget(
      datasetName: 'quiz_on_demand',
    );
  }
}
