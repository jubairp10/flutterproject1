import 'package:sqflite/sqflite.dart' as sql;

class SQLhelper {
  //create Table
  static Future<void> createTable(sql.Database db) async {     
    await db.execute("""CREATE TABLE user(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       email TEXT,
       password TEXT
      )""");
  }
  //create database
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('datauser', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }
  //create new user
  static Future<int> AddNewUser(String name, String email, String password) async {
    final db = await SQLhelper.OpenDb();
    final data = {'name': name, 'email': email, 'password': password};
    final id = db.insert('user', data);
    return id;
  }

  static Future<List<Map>> CheckLogin(String email, String password) async {
    final db = await SQLhelper.OpenDb();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE email= '$email' AND password = '$password' ");
    // print(data.toString());
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

  ///check user already exist
  static Future<List<Map>> userFound(String name, String email) async {
    final db = await SQLhelper.OpenDb();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE name= '$name' AND email = '$email' ");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

  static Future<List<Map>> getAll() async {
    final db = await SQLhelper.OpenDb();
    final data = db.rawQuery("SELECT * FROM user");
    return data;
  }

  static Future<void> Deleteuser(int id) async {
    final db = await SQLhelper.OpenDb();
    db.delete('user', where: 'id = ?', whereArgs: [id]);
  }
  static Future<void>createDataTable(sql.Database db)async{
    await db.execute("""CREATE TABLE data(
    id1 INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    details TEXT
    description TEXT
    price TEXT )""");
  }
  static Future<sql.Database> DataStore() async {
    return sql.openDatabase('datastore', version: 2,
        onCreate: (sql.Database db, int version) async {
          await createDataTable(db);
        });
  }
  static Future<int> AddNewData(String details, String description, String price) async {
    final db = await SQLhelper.DataStore();
    final data = {'details': details, 'description': description, 'price': price};
    final id = db.insert ('data', data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }
  static Future<List<Map>> getData()async{
    final db=await SQLhelper.DataStore();
    final data=db.rawQuery("SELECT * FROM data");
    return data;
  }

}