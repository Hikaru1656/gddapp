import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gddapp/main.dart';
import 'package:gddapp/models/main_task.dart';
import 'package:gddapp/repositories/main_tasks_repository.dart';
import 'package:gddapp/view_models/current_user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainTasksRepositoryProvider = Provider<MainTasksRepository>((ref) {
  final CurrentUserNotifier _currentUserNotifier = ref.watch(currentUserProvider);
  return MainTasksRepositoryImpl(currentUserNotifier: _currentUserNotifier);
});


class MainTasksRepositoryImpl implements MainTasksRepository {
  final CurrentUserNotifier currentUserNotifier;
  MainTasksRepositoryImpl({required this.currentUserNotifier});

  @override
  Future<MainTask?> getMainTaskById(String mainTaskId) async {
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference mainTasksRef =
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
      final  DocumentSnapshot documentSnapshot =
      await mainTasksRef.doc(mainTaskId).get();
      final MainTask _mainTask = MainTask.fromDocument(documentSnapshot);
      return _mainTask;
    } else {
      return null;
    }
  }

  Future<List<MainTask>?> getMainTaskList() async {
    List<MainTask> _mainTasksList = [];
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference mainTasksRef =
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
      final QuerySnapshot querySnapshot =
      await mainTasksRef.get();
      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        _mainTasksList.add(MainTask.fromDocument(doc));
      }
      return _mainTasksList;
    } else {
      return null;
    }
  }

  Future<bool> registerMainTask(MainTask newMainTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference mainTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
        final DocumentReference docRef = await mainTasksRef.add(newMainTask.toMap());
        return true;
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<bool> updateMainTask(MainTask newMainTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference mainTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
        final test = mainTasksRef.doc(newMainTask.mainTaskId).update(newMainTask.toMap());
        return true;
      } catch (e) {
        return false;
      }

    }
    else {
      return false;
    }
  }

  Future<bool> deleteMainTask(MainTask mainTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference<Map<String, dynamic>> mainTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
        final test = mainTasksRef.doc(mainTask.mainTaskId).delete();
        return true;
      } catch (e) {
        return false;
      }
    }
    else {
      return false;
    }
  }
}