import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    String? userId,
    required String userName,
    required String email,
    required String passcode,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;
  const User._();

  // データベースからUser型へ
  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      userId: doc.id,
      userName: doc["userName"] as String,
      email: doc["email"] as String,
      passcode: doc["passcode"] as String,
      createdAt: doc["createdAt"].toDate(),
      updatedAt: doc["updatedAt"].toDate(),

    );
  }

  // User型からMap(データベース)へ
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "userName": userName,
      "email": email,
      "passcode": passcode,
      "createdAt": Timestamp.fromDate(createdAt),
      "updatedAt": Timestamp.fromDate(updatedAt),

    };
  }
}