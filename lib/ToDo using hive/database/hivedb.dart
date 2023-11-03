import 'package:hive/hive.dart';

import '../models/todomodels.dart';

class HiveDb {
  HiveDb.internal();
  static HiveDb instance = HiveDb.internal();
  factory HiveDb() {
    return instance;
  }

  Future<void> addTask(Todo todo) async {
    final db = await Hive.openBox<Todo>('tasks');
    db.put(todo.id, todo);
  }

    Future<List<Todo>> getTask() async {
      final db = await Hive.openBox<Todo>('tasks');
      return db.values.toList();
    }

  }
