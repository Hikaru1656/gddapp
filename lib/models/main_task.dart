import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gddapp/models/sub_task.dart';
part 'main_task.freezed.dart';

@freezed
class MainTask with _$MainTask {
  factory MainTask({
    String? mainTaskId,
    required String title,
    required String description,
    required String reward,
    required bool isDone,
    required DateTime deadline,
    required List<SubTask> subTasksList,
    required DateTime createdAt,
    required DateTime updatedAt,

  }) = _MainTask;
  const MainTask._();

  // データベースからUser型へ
  factory MainTask.fromDocument(DocumentSnapshot doc) {
    return MainTask(
      mainTaskId: doc.id,
      title: doc["title"] as String,
      description: doc["description"] as String,
      reward: doc["reward"] as String,
      isDone: doc["isDone"] as bool,
      deadline: doc["deadline"].toDate(),
      subTasksList: [],
      createdAt: doc["createdAt"].toDate(),
      updatedAt: doc["updatedAt"].toDate(),
    );
  }

  // User型からMap(データベース)へ
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "title": title,
      "description": description,
      "reward": reward,
      "isDone": isDone,
      "deadline": Timestamp.fromDate(deadline),
      "createdAt": Timestamp.fromDate(createdAt),
      "updatedAt": Timestamp.fromDate(updatedAt),
    };
  }
}