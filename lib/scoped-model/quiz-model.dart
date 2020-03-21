import 'package:scoped_model/scoped_model.dart';

/// Wird von MainModel "importiert"
mixin QuizModel on Model {
  int _currentQuizPage = 0;
  int _questionFlowLength;

  int get currentQuizPage {
    return _currentQuizPage;
  }

  int get questionFlowLength {
    return _questionFlowLength;
  }

  incrementCurrentQuizPage() {
    _currentQuizPage++;
    notifyListeners();
  }

  resetCurrentQuizPage() {
    _currentQuizPage = 0;
    _questionFlowLength = null;
    notifyListeners();
  }

  updateQuestionFlowLength(int newValue) {
    _questionFlowLength = newValue;
    notifyListeners();
  }
}
