import 'package:scoped_model/scoped_model.dart';

mixin VisibleStateModel on Model {
  bool _checkHand = false;
  bool _checkWalk = false;
  bool _checkGym = false;
  bool _checkDrink = false;
  bool _checkEat = false;
  bool _checkHandFace = false;
  bool _checkSmartDes = false;
  bool _checkSneeze = false;
  bool _checkVentilate = false;
  bool _checkSleep = false;
  bool _checkDistance = false;
  bool _checkRun = false;
  bool _checkSocial = false;
  bool _checkMedien = false;
bool _checkYoga = false;
bool _checkDaystruct = false;
bool _checkGoal = false;


void setVisibleGoalIcon(bool newValue) {
  print("SetVisible");
  _checkGoal = newValue;
}

bool get getVisibleGoalIcon {
  print("GetVisible");
  return _checkGoal;
  //_checkHand = newValue;
}

void setVisibleDaystructIcon(bool newValue) {
  print("SetVisible");
  _checkDaystruct = newValue;
}

bool get getVisibleDaystructIcon {
  print("GetVisible");
  return _checkDaystruct;
  //_checkHand = newValue;
}

void setVisibleYogaIcon(bool newValue) {
  print("SetVisible");
  _checkYoga = newValue;
}

bool get getVisibleYogaIcon {
  print("GetVisible");
  return _checkYoga;
  //_checkHand = newValue;
}

void setVisibleMedienIcon(bool newValue) {
  print("SetVisible");
  _checkMedien = newValue;
}

bool get getVisibleMedienIcon {
  print("GetVisible");
  return _checkMedien;
  //_checkHand = newValue;
}

void setVisibleSocialIcon(bool newValue) {
  print("SetVisible");
  _checkSocial = newValue;
}

bool get getvisibleSocialIcon {
  print("GetVisible");
  return _checkSocial;
  //_checkHand = newValue;
}


void setVisibleRunIcon(bool newValue) {
  print("SetVisible");
  _checkRun = newValue;
}

bool get getVisibleRunIcon {
  print("GetVisible");
  return _checkRun;
  //_checkHand = newValue;
}


void setVisibleDistanceIcon(bool newValue) {
  print("SetVisible");
  _checkDistance = newValue;
}

bool get getVisibleDistanceIcon {
  print("GetVisible");
  return _checkDistance;
  //_checkHand = newValue;
}

  void setVisibleSleepIcon(bool newValue) {
  print("SetVisible");
  _checkSleep = newValue;
}

bool get getVisibleSleepIcon {
  print("GetVisible");
  return _checkSleep;
  //_checkHand = newValue;
}


void setVisibleVentilateIcon(bool newValue) {
  print("SetVisible");
  _checkVentilate = newValue;
}

bool get getVisibleVentilateIcon {
  print("GetVisible");
  return _checkVentilate;
  //_checkHand = newValue;
}

void setVisibleSneezeIcon(bool newValue) {
  print("SetVisible");
  _checkSneeze = newValue;
}

bool get getVisibleSneezeIcon {
  print("GetVisible");
  return _checkSneeze;
  //_checkHand = newValue;
}

  void setVisibleSmartDesIcon(bool newValue) {
  print("SetVisible");
  _checkSmartDes = newValue;
}

bool get getVisibleSmartDesIcon {
  print("GetVisible");
  return _checkSmartDes;
  //_checkHand = newValue;
}

void setVisibleGymIcon(bool newValue) {
  print("SetVisible");
  _checkGym = newValue;
}

bool get getVisibleGymIcon {
  print("GetVisible");
  return _checkGym;
  //_checkHand = newValue;
}

void setVisibleHandfaceIcon(bool newValue) {
  print("SetVisible");
  _checkHandFace = newValue;
}

bool get getVisibleHandfaceIcon {
  print("GetVisible");
  return _checkHandFace;
  //_checkHand = newValue;
}

void setVisibleEatIcon(bool newValue) {
  print("SetVisible");
  _checkEat = newValue;
}

bool get getVisibleEatIcon {
  print("GetVisible");
  return _checkEat;
  //_checkHand = newValue;
}


void setVisibleDrinkIcon(bool newValue) {
  print("SetVisible");
  _checkDrink = newValue;
}

bool get getVisibleDrinkIcon {
  print("GetVisible");
  return _checkDrink;
  //_checkHand = newValue;
}

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
