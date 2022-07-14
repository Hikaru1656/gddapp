import 'package:flutter/material.dart';
import 'package:gddapp/repositories/sub_tasks_repository.dart';
import 'package:gddapp/repositories/sub_tasks_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/sub_task.dart';

final subTasksProvider = ChangeNotifierProvider((ref) {
  final SubTasksRepository _subTasksRepository = ref.watch(subTasksRepositoryProvider);
  return SubTasksListNotifier(subTasksRepository: _subTasksRepository);
});

class SubTasksListNotifier extends ChangeNotifier {
  final SubTasksRepository subTasksRepository;
  SubTasksListNotifier({required this.subTasksRepository});

  List<SubTask> currentSubTasksList = [];
  SubTask? currentSubTask;

  Future<void> registerSubTask(SubTask newSubTask) async {
    final bool _addSubTask = await subTasksRepository.registerSubTask(newSubTask);
    if (_addSubTask) {
      final List<SubTask> _subTasksList = await subTasksRepository.getSubTaskList();
      currentSubTasksList = _subTasksList;
      notifyListeners();
    }
  }

  Future<void> getSubTaskList() async {
    final List<SubTask> _subTasksList = await subTasksRepository
        .getSubTaskList();
    currentSubTasksList = _subTasksList;
    print(currentSubTasksList);
    notifyListeners();
  }

  Future<void> getSubTaskById(String subTaskId) async {
    final SubTask? _subTask = await subTasksRepository.getSubTaskById(subTaskId);
    currentSubTask = _subTask;
    notifyListeners();
  }

  Future<bool> updateSubTask(SubTask newSubTask) async {
    try {
      await subTasksRepository.updateSubTask(newSubTask);
      final List<SubTask> _subTasksList = await subTasksRepository.getSubTaskList();
      currentSubTasksList = _subTasksList;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
  Future<bool> deleteSubTask(SubTask subTask) async {
    try {
      await subTasksRepository.deleteSubTask(subTask);
      final List<SubTask> _subTasksList = await subTasksRepository.getSubTaskList();
      currentSubTasksList = _subTasksList;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
}
