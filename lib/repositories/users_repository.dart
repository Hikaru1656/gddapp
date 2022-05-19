import 'package:gddapp/models/user.dart';

abstract class UsersRepository {
  Future<User?> signIn(String email, String passcode);
  Future<User> registerUser(User newUser);
}