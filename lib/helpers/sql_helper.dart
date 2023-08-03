import "package:path/path.dart" show join;
import 'package:path_provider/path_provider.dart';
import 'package:rento/helpers/helper.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static final SqlHelper _instance = SqlHelper.internal();
  factory SqlHelper() => _instance;
  SqlHelper.internal();

  String dbName = "rent_management_system.sqlite";
  static dynamic _db;

  // get database
  Future<Database> get db async {
    _db = await initDB();
    return _db;
  }

  //  initialize db
  initDB() async {
    var appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, dbName);

    var database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: _onCreate,
      onConfigure: (db) async => await db.execute("PRAGMA foreign_keys=ON"),
    );
    return database;
  }

  // create all tables on initialized database
  // FOREIGN KEY (breedId) REFERENCES breeds(id) ON DELETE SET NULL
  // uuid https://stackoverflow.com/questions/15548652/how-to-generate-unique-id-in-dart
  Future<void> _onCreate(Database db, int version) async {
    // queries
    var quires = [
      "CREATE TABLE rooms(id TEXT NOT NULL, room_no TEXT NOT NULL, description TEXT, e_unit DOUBLE DEFAULT 0.0, pending_amount DOUBLE DEFAULT 0.0, rental_amount DOUBLE DEFAULT 0.0, status BOOLEAN DEFAULT false, created_at DATETIME DEFAULT CUR_TIMESTAMP, updated_at DATETIME DEFAULT CUR_TIMESTAMP)",
      "CREATE TABLE test(id TEXT NOT NULL, name TEXT NOT NULL)"
    ];
    for (String query in quires) {
      await db.execute(query);
    }
  }

  /// TODO: insert data
  ///     @param tableName {String}
  ///     @param data {Map}
  ///     @return {int}
  Future<int> insert(String tableName, Map<String, dynamic> data) async {
    final db = await this.db;
    data['id'] = Helper.uid();
    print("[DEBUG] INSERT DATA");
    return db.insert(tableName, data);
  }

  // TODO: fetch all data from table
  //      @param tableName {String}
  //      @return {List<Map>}
  // https://stackoverflow.com/questions/59787682/is-it-possible-to-use-template-arguments-like-c-in-dart
  Future<List<Map<String, dynamic>>> fetch(String tableName) async {
    final db = await this.db;
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data;
  }

  // TODO: get single item
  //      @param tableName {String}
  //      @param id {String}
  //      @return Map
  Future<Map<String, dynamic>> fetchOne(String tableName, String id) async {
    final db = await this.db;
    final List<Map<String, dynamic>> data = await db.query(
      tableName,
      columns: [],
      where: "id=?",
      whereArgs: [id],
    );
    return data.isNotEmpty ? data.first : {};
  }

  // TODO: update data
  //      @param tableName {String}
  //      @param data {Map}
  //      @return {int}
  Future<bool> update(String tableName, Map<String, dynamic> data) async {
    int status = 0;
    try {
      final db = await this.db;
      if (data.isNotEmpty) {
        status = await db.update(
          tableName,
          data,
          where: "id=?",
          whereArgs: [data['id'] ?? 0],
        );
      }
    } catch (error) {
      status = 0;
    }
    return (status == 1);
  }

  // TODO: delete data from sqlite database
  //      @param tableName {String}
  //      @param id {String}
  //      @return {int}
  //
  Future<int> delete(String tableName, String id) async {
    final db = await this.db;
    return await db.delete(
      tableName,
      where: "id=?",
      whereArgs: [id],
    );
  }

  // close the connection
  Future<void> close() async {
    final db = await this.db;
    db.close();
  }

  Future<void> deleteDB() async {
    close(); // close database connection

    var appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, dbName);

    await deleteDatabase(dbPath);
  }
}
