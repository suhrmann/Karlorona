import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// SQFLite Dokumentation/API:
/// https://pub.dev/packages/sqflite
class DB {
  String tableName = 'ichmacheesrichtigoder';
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

    Database database = await openDatabase(
      path,
      onCreate: (Database db, int version) async {
        /// Mehrere tables können erstellt werden
        await db.execute(
          '''create table $tableName (
          id integer primary key autoincrement,
          column1 text not null,
          column2 integer not null)''',
        );
      },
      version: 1,
    );

    return database;
  }

  Future<Null> insertRow(Map<String, dynamic> rowdata) async {
    final Database db = await database;
    await db.insert(tableName, rowdata);
  }

  Future<dynamic> queryMainTable() async {
    final db = await database;
    return await db.query(tableName);
  }
}
