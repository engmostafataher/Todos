import 'package:app_todos/features/home/data/models/taskss.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataBasa {
  Database? database;
  createDatabasa() async {
    database = await openDatabase("todo.db", version: 1,
        onCreate: (databasa, version) {
      print('database  created');

      databasa.execute(
          'CREATE TABLE tasks (title TEXT, data TEXT, time TEXT, status TEXT)');
      print('table created');
    }, onOpen: (databasa) {
      print('database opened');
      getDataFrombases(databasa);
    });
  }

  List<Map<String, dynamic>>? tasks = [];
  List<Taskss> taskList = [];

  insertData(
    String title,
    String time,
    String data,
  ) {
    database!
        .rawInsert(
            "INSERT INTO tasks(title, data, time, status) VALUES('$title', '$time', '$data', 'new')")
        .then((id) {
      print("$id inserted successfully");
    });
  }

  getDataFrombases(databasa) {
    return database!.rawQuery("SELECT * FROM tasks").then((onValue) {
      tasks = onValue;
      for (var element in tasks!) {
        taskList.add(Taskss.fromMap(element));
      }
      return  taskList;

      
    });
  }
}
