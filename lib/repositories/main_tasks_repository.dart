import 'package:gddapp/models/main_task.dart';

abstract class MainTasksRepository {
  Future<MainTask?> getMainTaskById(String mainTaskId);
  Future<List<MainTask>?> getMainTaskList();
  Future<bool> registerMainTask(MainTask newMainTask);
  Future<bool> updateMainTask(MainTask newMainTask);
  Future<bool> deleteMainTask(MainTask mainTask);
}