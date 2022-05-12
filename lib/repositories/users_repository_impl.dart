import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gddapp/models/user.dart';
import 'package:gddapp/repositories/users_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersRepositoryProvider = Provider<UsersRepository>((ref) {
  return UsersRepositoryImpl();
});

class UsersRepositoryImpl implements UsersRepository {
  @override
  Future<User?> getUser(String email) async {
   final CollectionReference usersRef =
       FirebaseFirestore.instance.collection('users');
   final  QuerySnapshot querySnapshot =
       await usersRef.where("email", isEqualTo: email).get();

   if (querySnapshot.size > 0) {
     final User _user = User.fromDocument(querySnapshot.docs[0]);
     return _user;
   } else {
     return null;
   }
  }

  @override
  Future<User> registerUser(User newUser) async {
    final CollectionReference usersRef =
        FirebaseFirestore.instance.collection('users');
    final DocumentReference docRef = await usersRef.add(newUser.toMap());
    final DocumentSnapshot doc = await docRef.get();
    return User.fromDocument(doc);
  }
}