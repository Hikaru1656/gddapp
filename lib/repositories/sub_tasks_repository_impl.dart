import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gddapp/models/sub_task.dart';
import 'package:gddapp/repositories/sub_tasks_repository.dart';
import 'package:gddapp/view_models/current_user.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final subTasksRepositoryProvider = Provider<SubTasksRepository>((ref) {
  final CurrentUserNotifier _currentUserNotifier = ref.watch(currentUserProvider);
  final MainTasksListNotifier _currentMainTaskNotifier = ref.watch(mainTasksProvider);
  return SubTasksRepositoryImpl(currentUserNotifier: _currentUserNotifier, currentMainTaskNotifier: _currentMainTaskNotifier);
});


class SubTasksRepositoryImpl implements SubTasksRepository {
  final CurrentUserNotifier currentUserNotifier;
  final MainTasksListNotifier currentMainTaskNotifier;
  SubTasksRepositoryImpl({required this.currentUserNotifier, required this.currentMainTaskNotifier});


  @override
  Future<SubTask?> getSubTaskById(String subTaskId) async {
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference subTasksRef =
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/subTasks');
      final  DocumentSnapshot documentSnapshot =
      await subTasksRef.doc(subTaskId).get();
      final SubTask _subTask = SubTask.fromDocument(documentSnapshot);
      return _subTask;
    } else {
      return null;
    }
  }

  Future<List<SubTask>> getSubTaskList() async {
    List<SubTask> _subTasksList = [];
    if (currentUserNotifier.currentUser != null) {
      final CollectionReference subTasksRef =
      FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks/${currentMainTaskNotifier.currentMainTask!.mainTaskId}/subTasks');
      final QuerySnapshot querySnapshot =
      await subTasksRef.get();
      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        _subTasksList.add(SubTask.fromDocument(doc));
      }
    }
    return _subTasksList;
  }

  Future<bool> registerSubTask(SubTask newSubTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference subTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/mainTasks/${currentMainTaskNotifier.currentMainTask!.mainTaskId}/subTasks'); //currentMainTaskNotifier.currentMainTask!.mainTaskId
        final DocumentReference docRef = await subTasksRef.add(newSubTask.toMap());
        print('KKKKKKKKKKKKKKKKKKK');
        return true;
      } catch (e) {
        print('OOOOOOOOOOOOOOOOOOOOOOO');
        return false;
      }
    } else {
      print('pipipi');
      return false;
    }
  }

  Future<bool> updateSubTask(SubTask newSubTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference subTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/subTasks');
        final test = subTasksRef.doc(newSubTask.subTaskId).update(newSubTask.toMap());
        return true;
      } catch (e) {
        return false;
      }

    }
    else {
      return false;
    }
  }

  Future<bool> deleteSubTask(SubTask subTask) async {
    if (currentUserNotifier.currentUser != null) {
      try {
        final CollectionReference<Map<String, dynamic>>subTasksRef =
        FirebaseFirestore.instance.collection('users/${currentUserNotifier.currentUser!.userId}/subTasks');
        final test = subTasksRef.doc(subTask.subTaskId).delete();
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
