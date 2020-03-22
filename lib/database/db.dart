import 'package:ich_mache_es_richtig_richtig_oder/model/activity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// SQFLite Dokumentation/API:
/// https://pub.dev/packages/sqflite
class DB {
  String mainTable = 'mainTable';
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
          '''create table $mainTable (
          id integer primary key autoincrement,
          timestampLastLogin text not null,
          hygienescore integer not null,
          healthscore integer not null,
          psychscore integer not null,
          level integer not null)''',
        );
        await db.execute(
          /// Hier sollten die Scores !nach! dem Ausführen der activity protokolliert werden!
          '''create table $activityTable (
          id integer primary key autoincrement,
          timestamp text not null,
          activity text not null,
          hygienescore integer not null,
          healthscore integer not null,
          psychscore integer not null)''',
        );
      },
      version: 1,
    );

    return database;
  }

  Future<Null> insertActivity(Activity activity) async {
    final Database db = await database;
    await db.insert(activityTable, activity.toMap());
  }

  Future<List<Activity>> getActivitiesOfType(Activities type) async {
    final db = await database;
    List<Map<String, dynamic>> response =
        await db.query(activityTable, where: 'activity = $type');
    List<Activity> activities = [];
    activities = response.map((e) {
      Activities enumedActivity = Activities.values
          .firstWhere((activity) => e['activity'] == activity.toString());
      return Activity(
          activity: enumedActivity,
          healthscore: e['healthscore'],
          hygienescore: e['hygienescore'],
          psychscore: e['psychscore'],
          timestamp: e['timestamp']);
    }).toList();
    return activities;
  }

  Future<List<Activity>> getAllActivities() async {
    final db = await database;
    List<Map<String, dynamic>> response = await db.query(activityTable);
    List<Activity> activities = [];
    activities = response.map((e) {
      Activities enumedActivity = Activities.values
          .firstWhere((activity) => e['activity'] == activity.toString());
      return Activity(
          activity: enumedActivity,
          healthscore: e['healthscore'],
          hygienescore: e['hygienescore'],
          psychscore: e['psychscore'],
          timestamp: e['timestamp']);
    }).toList();
    return activities;
  }
}
