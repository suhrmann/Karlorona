import 'package:scoped_model/scoped_model.dart';
import './database-model.dart';
import './sub-model.dart';

class MainModel extends Model with SubModel, DatabaseModel {
  bool _testValue = false;

  bool get testValue {
    return _testValue;
  }

  void changeTestValue(bool newValue) {
    _testValue = newValue;
    notifyListeners();
  }
}
