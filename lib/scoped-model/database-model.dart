import 'package:scoped_model/scoped_model.dart';

import '../model/activity.dart';
import '../database/db.dart';

/// Wird von MainModel "importiert"
mixin DatabaseModel on Model {
  double _currentWellScore = 0;
  double _currentPsychScore = 0;
  double _currentHealthScore = 0;
  double _currentHygieneScore = 0;
  bool _isFirstStartup;
  String _username = "";
  bool _loadingWellScore;

  bool get isFirstStartup {
    return _isFirstStartup;
  }

  bool get isLoadingWellScore {
    return _loadingWellScore;
  }

  String get username {
    return _username;
  }

  double get currentWellScore {
    return _currentWellScore;
  }

  double get currentPsychScore {
    return _currentPsychScore;
  }

  double get currentHealthScore {
    return _currentHealthScore;
  }

  double get currentHygieneScore {
    return _currentHygieneScore;
  }

  Future<Null> changeFirstStartupState(bool newValue) async {
    await DB.db.changeFirstStartupState(newValue);
    await determineFirstStartup();
  }

  Future<bool> addName(String name) async {
    await DB.db.updateName(name);
    _username = name;
    return true;
  }

  Future<Null> determineFirstStartup() async {
    _isFirstStartup = await DB.db.isFirstStartup();
    notifyListeners();
  }

  Future<bool> addRow() async {
    await addActivity(Activity(
        activity: Activities.cardio,
        hygienescore: 40,
        healthscore: 60,
        psychscore: 80));
    return true;
  }

  Future<bool> addActivity(Activity activity) async {
    await DB.db.insertActivity(activity);
    return true;
  }

  Future<List<Activity>> retrieveData() async {
    return await DB.db.getAllActivities();
  }

  Future<List<Activity>> retrieveMetaData() async {
    return await DB.db.getMeta();
  }

  Future<List<Activity>> getActivitiesOfType() async {
    return await DB.db.getActivitiesOfType(Activities.cardio);
  }

  Future<Activity> getLast() async {
    List<Map<String, dynamic>> lastActivityData = await DB.db.getLastActivity();
    if (lastActivityData.isNotEmpty) {
      return DB.db.convertDataToActivity(lastActivityData[0]);
    } else {
      return null;
    }
  }

  getCurrentWellScore() async {
    _loadingWellScore = true;
    notifyListeners();
    Activity lastActivity = await getLast();
    if (lastActivity == null) {
      _currentWellScore = 0;
      _currentPsychScore = 0;
      _currentHealthScore = 0;
      _currentHygieneScore = 0;
    } else {
      _currentWellScore = lastActivity.calculateScore();
      _currentPsychScore = lastActivity.psychscore.toDouble();
      _currentHealthScore = lastActivity.healthscore.toDouble();
      _currentHygieneScore = lastActivity.hygienescore.toDouble();
    }
    _loadingWellScore = false;
    notifyListeners();
  }
}
