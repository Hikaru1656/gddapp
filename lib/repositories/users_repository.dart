import 'package:gddapp/models/user.dart';

abstract class UsersRepository {
  Future<User?> getUser(String email);
  Future<User> registerUser(User newUser);
}