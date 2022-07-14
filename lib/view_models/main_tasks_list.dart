import 'package:flutter/material.dart';
import 'package:gddapp/models/main_task.dart';
import 'package:gddapp/repositories/main_tasks_repository.dart';
import 'package:gddapp/repositories/main_tasks_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainTasksProvider = ChangeNotifierProvider((ref) {
  final MainTasksRepository _mainTasksRepository = ref.watch(mainTasksRepositoryProvider);
  return MainTasksListNotifier(mainTasksRepository: _mainTasksRepository);
});

class MainTasksListNotifier extends ChangeNotifier {
  final MainTasksRepository mainTasksRepository;
  MainTasksListNotifier({required this.mainTasksRepository});

  List<MainTask>? currentMainTasksList;
  MainTask? currentMainTask;

  Future<void> registerMainTask(MainTask newMainTask) async {
    final bool _addMainTask = await mainTasksRepository.registerMainTask(newMainTask);
    if (_addMainTask) {
      final List<MainTask>? _mainTasksList = await mainTasksRepository.getMainTaskList();
      currentMainTasksList = _mainTasksList;
      notifyListeners();
    }
  }

  Future<void> getMainTaskList() async {
    final List<MainTask>? _mainTasksList = await mainTasksRepository
        .getMainTaskList();
    currentMainTasksList = _mainTasksList;
    notifyListeners();
    print(currentMainTasksList);
  }

  Future<void> getMainTaskById(String mainTaskId) async {
    final MainTask? _currentMainTask = await mainTasksRepository.getMainTaskById(mainTaskId);
    print(_currentMainTask!.mainTaskId);
    currentMainTask = _currentMainTask;
    notifyListeners();
  }

  Future<bool> updateMainTask(MainTask newMainTask) async {
    try {
      await mainTasksRepository.updateMainTask(newMainTask);
      final List<MainTask>? _mainTasksList = await mainTasksRepository.getMainTaskList();
      currentMainTasksList = _mainTasksList;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
  Future<bool> deleteMainTask(MainTask mainTask) async {
    try {
      await mainTasksRepository.deleteMainTask(mainTask);
      final List<MainTask>? _mainTasksList = await mainTasksRepository.getMainTaskList();
      currentMainTasksList = _mainTasksList;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
}
