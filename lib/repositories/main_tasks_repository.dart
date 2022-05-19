import 'package:gddapp/models/main_task.dart';

abstract class MainTasksRepository {
  Future<MainTask?> getMainTaskById(String mainTaskId);
Future<List<MainTask>?> getMainTaskList();
  Future<MainTask?> registerMainTask(MainTask newMainTask);
  Future<MainTask?> updateMainTask(String mainTaskId);
  Future<MainTask?> deleteMainTask(String mainTaskId);
}