import 'package:scoped_model/scoped_model.dart';
import '../database/db.dart';

/// Wird von MainModel "importiert"
mixin DatabaseModel on Model {
  Future<bool> addRow() async {
    await DB.db.insertRow({'column1': 'testdata', 'column2': 12345});
    return true;
  }

  Future retrieveData() async {
    return await DB.db.queryMainTable();
  }
}
