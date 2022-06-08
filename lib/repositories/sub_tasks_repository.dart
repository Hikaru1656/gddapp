import 'package:gddapp/models/sub_task.dart';

abstract class SubTasksRepository {
  Future<SubTask?> getSubTaskById(String subTaskId);
  Future<List<SubTask>?> getSubTaskList();
  Future<bool> registerSubTask(SubTask newSubTask);
  Future<bool> updateSubTask(SubTask newSubTask);
  Future<bool> deleteSubTask(SubTask subTask);
}