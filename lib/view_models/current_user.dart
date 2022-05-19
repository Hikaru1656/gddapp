import 'package:flutter/material.dart';
import 'package:gddapp/repositories/users_repository.dart';
import 'package:gddapp/repositories/users_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gddapp/models/user.dart';
import 'package:gddapp/repositories/users_repository.dart';
import 'package:gddapp/repositories/users_repository_impl.dart';

final currentUserProvider = ChangeNotifierProvider((ref) {
  final UsersRepository _usersRepository = ref.watch(usersRepositoryProvider);
  return CurrentUserNotifier(usersRepository: _usersRepository);
});

class CurrentUserNotifier extends ChangeNotifier {
  final UsersRepository usersRepository;
  CurrentUserNotifier({required this.usersRepository});

  User? currentUser;

  Future<void> signIn(String email, String passcode) async {
    final User? _currentUser = await usersRepository.signIn(email, passcode);
    currentUser = _currentUser;
    notifyListeners();
  }
}