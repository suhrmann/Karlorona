import 'package:ich_mache_es_richtig_richtig_oder/model/activity.dart';
import 'package:scoped_model/scoped_model.dart';
import '../database/db.dart';

/// Wird von MainModel "importiert"
mixin DatabaseModel on Model {
  double _currentWellScore = 0;

  double get currentWellScore {
    return _currentWellScore;
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
    Activity lastActivity = await getLast();
    if (lastActivity == null) _currentWellScore = 0;
    _currentWellScore = lastActivity.calculateScore();
    notifyListeners();
  }
}
