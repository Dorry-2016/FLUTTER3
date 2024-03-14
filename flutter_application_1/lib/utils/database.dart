// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class MyDatabase {
//  late Database database;
//   openDb() async {
//     var databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'cart.db');
//     database = await openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       await db.execute(
//           'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)');
//     });
//     writeRec(idd, name) async {
//   int id1 = await database.rawInsert(
//       'INSERT INTO Test(id,name) VALUES($ id,"$name"));

//       );
//       }
//       }
//   }

