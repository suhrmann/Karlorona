import 'package:ich_mache_es_richtig_richtig_oder/model/activity.dart';
import 'package:scoped_model/scoped_model.dart';
import '../database/db.dart';

/// Wird von MainModel "importiert"
mixin DatabaseModel on Model {
  Future<bool> addActivity() async {
    await DB.db.insertActivity(Activity(
        activity: Activities.cardio,
        hygienescore: 40,
        healthscore: 60,
        psychscore: 80));
    return true;
  }

  Future retrieveData() async {
    return await DB.db.getAllActivities();
  }

  Future retrieveData2() async {
    return await DB.db.getActivitiesOfType(Activities.cardio);
  }

  Future getLast() async {
    return await DB.db.getLastActivity();
  }
}
