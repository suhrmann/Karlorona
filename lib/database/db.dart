import 'package:ich_mache_es_richtig_richtig_oder/model/activity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// SQFLite Dokumentation/API:
/// https://pub.dev/packages/sqflite
class DB {
  String metaTable = 'metaTable';
  String activityTable = 'activityTable';
  Database _database; // aus dem Package sqflite

  /// Singleton Pattern, um nur eine Datenbank zu erstellen
  DB._();
  static final DB db = DB._();

  /// getter, der bei fehlender Datenbank gleich eine neue erstellt
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await initDB();
    }
    return _database;
  }

  initDB() async {
    String path = await getDatabasesPath();
    //print(path)
    path = join(path, 'ichmacheesrichtigoder.db');
    deleteDatabase(path); // delete on production :)

    Database database = await openDatabase(
      path,
      onCreate: (Database db, int version) async {
        /// Mehrere tables können erstellt werden
        await db.execute(
          '''create table $metaTable (
          id integer primary key autoincrement,
          timestampLastLogin text not null,
          level integer not null)''',
        );
        await db.execute(
          /// Hier sollten die Scores !nach! dem Ausführen der activity protokolliert werden!
          '''create table $activityTable (
          id integer primary key autoincrement,
          timestamp text not null,
          activity text not null,
          currentHygienescore integer not null,
          currentHealthscore integer not null,
          currentPsychscore integer not null)''',
        );
      },
      version: 1,
    );

    return database;
  }

  Activity convertDataToActivity(Map<String, dynamic> activityData) {
    Activities enumedActivity = Activities.values.firstWhere(
        (activity) => activityData['activity'] == activity.toString());
    return Activity(
        activity: enumedActivity,
        hygienescore: activityData['currentHealthscore'],
        healthscore: activityData['currentHygienescore'],
        psychscore: activityData['currentPsychscore'],
        timestamp: activityData['timestamp']);
  }

  Future<Null> insertActivity(Activity activity) async {
    int currentHealthScore = 0;
    int currentHygienescore = 0;
    int currentPsychscore = 0;
    final Database db = await database;
    List<Map<String, dynamic>> lastActivityData = await getLastActivity();
    if (lastActivityData.isNotEmpty) {
      Activity lastActivity = convertDataToActivity(lastActivityData[0]);
      currentHygienescore = lastActivity.hygienescore;
      currentHealthScore = lastActivity.healthscore;
      currentPsychscore = lastActivity.psychscore;
    }

    activity.hygienescore = activity.hygienescore + currentHygienescore < 100
        ? activity.hygienescore += currentHygienescore
        : 100;
    activity.healthscore = activity.healthscore + currentHealthScore < 100
        ? activity.healthscore += currentHealthScore
        : 100;

    activity.psychscore = activity.psychscore + currentPsychscore < 100
        ? activity.psychscore += currentPsychscore
        : 100;

    await db.insert(activityTable, activity.toMap());
  }

  Future<List<Map<String, dynamic>>> getLastActivity() async {
    final Database db = await database;
    return await db
        .rawQuery('SELECT * FROM $activityTable ORDER BY id DESC LIMIT 1;');
  }

  Future<List<Activity>> getActivitiesOfType(Activities type) async {
    final db = await database;

    List<Map<String, dynamic>> response =
        await db.query(activityTable, where: 'activity = $type');
    List<Activity> activities = [];
    activities = response.map((activity) {
      return convertDataToActivity(activity);
    }).toList();
    return activities;
  }

  Future<List<Activity>> getAllActivities() async {
    final db = await database;
    List<Map<String, dynamic>> response = await db.query(activityTable);
    List<Activity> activities = [];
    activities = response.map((activity) {
      return convertDataToActivity(activity);
    }).toList();
    return activities;
  }
}
