import 'package:scoped_model/scoped_model.dart';
import './database-model.dart';
import './sub-model.dart';

/// Die Klassen SubModel und DatabaseModel werden als Mixins "eingebunden"
class MainModel extends Model with SubModel, DatabaseModel {
  /// Showcase, um die Verwendung des ScopedModels zu demonstrieren
  bool _testValue = false;

  bool get testValue {
    return _testValue;
  }

  void changeTestValue(bool newValue) {
    _testValue = newValue;
    notifyListeners();
  }
}
