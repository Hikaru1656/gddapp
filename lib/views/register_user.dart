import 'package:flutter/material.dart';
import 'package:gddapp/models/user.dart';
import 'package:gddapp/view_models/current_user.dart';
import 'package:gddapp/views/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



class RegisterUser extends HookConsumerWidget {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passcodeController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('登録'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _userNameController,
                  autofocus: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'ユーザー名を入力してください'
                  ),
                ),
                TextField(
                  controller: _emailController,
                  autofocus: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'メールアドレスを入力してください'
                  ),
                ),
                TextField(
                  controller: _passcodeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '数字4ケタのパスコードを入力してください。'
                  ),
                ),
                ElevatedButton(
                  child: Text('登録'),
                  onPressed: () async {
                    final User _newUser = User(
                        userName: _userNameController.text,
                        email: _emailController.text,
                        passcode: _passcodeController.text,
                        createdAt: DateTime.now(),
                        updatedAt: DateTime.now(),
                    );
                    await ref.read(currentUserProvider).registerUser(_newUser);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                  },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
