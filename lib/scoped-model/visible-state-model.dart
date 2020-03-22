import 'package:scoped_model/scoped_model.dart';

mixin VisibleStateModel on Model {
  bool _checkHand = false;
  bool _checkWalk = false;

  void setVisibleHandIcon(bool newValue) {
    print("SetVisible");
    _checkHand = newValue;
  }

  bool get getvisibleHandIcon {
    print("GetVisible");
    return _checkHand;
    //_checkHand = newValue;
  }

  void setVisibleWalkIcon(bool newValue) {
    print("SetVisible");
    _checkWalk = newValue;
  }

  bool get getvisibleWalkIcon {
    print("GetVisible");
    return _checkWalk;
    //_checkHand = newValue;
  }
}
