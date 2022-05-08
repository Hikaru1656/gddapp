import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sub_task.freezed.dart';

@freezed
class SubTask with _$SubTask {
  factory SubTask({
    String? subTaskId,
    required String title,
    required bool isDone,
    required DateTime createdAt,
    required DateTime updatedAt,

  }) = _SubTask;
  const SubTask._();

  // データベースからUser型へ
  factory SubTask.fromDocument(DocumentSnapshot doc) {
    return SubTask(
      subTaskId: doc.id,
      title: doc["title"] as String,
      isDone: doc["isDone"] as bool,
      createdAt: doc["createdAt"].toDate(),
      updatedAt: doc["updatedAt"].toDate(),
    );
  }

  // User型からMap(データベース)へ
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "subTaskId": subTaskId,
      "title": title,
      "isDone": isDone,
      "createdAt": Timestamp.fromDate(createdAt),
      "updatedAt": Timestamp.fromDate(updatedAt),

    };
  }
}