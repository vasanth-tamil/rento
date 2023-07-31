import "package:path/path.dart" show join;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  // static final SqlHelper _instance = new SqlHelper.internal();
  // factory SqlHelper() => _instance;

  String dbName = "rent_management_system.sqlite";
  static late Database _db;

  // get database
  Future<Database> get db async {
    _db = await initDB();
    return _db;
  }

  //  initialize db
  initDB() async {
    var appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, dbName);
    String query =
        "CREATE TABLE test(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL)";

    var database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(query);
      },
    );
    return database;
  }

  // SqlHelper.internal();
}
