import 'package:flutter/material.dart';
import 'package:gddapp/models/user.dart';
import 'package:gddapp/view_models/current_user.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:gddapp/views/main_page.dart';
import 'package:gddapp/views/register_user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignIn extends HookConsumerWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passcodeController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  maxLines: 1,
                  minLines: 1,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'email'
                  ),
                ),
                TextField(
                  controller: _passcodeController,
                  maxLines: 1,
                  minLines: 1,
                  obscureText: true,
                  autofocus: true,
                  maxLength: 4,
                  decoration: InputDecoration(
                      hintText: 'passcode'
                  ),
                ),
                ElevatedButton(
                    onPressed: () async{
                      final User? _user = await ref.read(currentUserProvider).signIn(_emailController.text, _passcodeController.text);
                      await ref.read(mainTasksProvider).getMainTaskList();
                      if(_user == null) {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Text('入力値が違います。'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('OK'),
                                  ),
                                ],

                              );
                            }
                        );
                      } else {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                      }
                    },
                    child: Text('LogIn')
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('アカウントをお持ちでない方は'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterUser()));
                        },
                        child: Text('こちら')
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
