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

  Future<MainTask?> registerMainTask(MainTask? newMainTask) async {
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference mainTasksRef =
          FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
      final DocumentReference docRef = await mainTasksRef.add(newMainTask!.toMap());
      final DocumentSnapshot doc = await docRef.get();
      return MainTask.fromDocument(doc);
    } else {
      return null;
    }
  }

  Future<MainTask?> updateMainTask(String mainTaskId) async {
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference mainTasksRef =
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks');
      final  DocumentSnapshot documentSnapshot =
      await mainTasksRef.doc(mainTaskId).get();
      final MainTask _mainTask = MainTask.fromDocument(documentSnapshot);
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks').doc(mainTaskId).update(_mainTask.toMap());
    }
    else {
      return null;
    }
  }

  Future<MainTask?> deleteMainTask(String mainTaskId) async {
    if (currentUserNotifier.currentUser != null) {
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks').doc(mainTaskId).delete();
    }
    else {
      return null;
    }
  }
}