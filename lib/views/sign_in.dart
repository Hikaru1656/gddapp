import 'package:flutter/material.dart';
import 'package:gddapp/views/register_user.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  maxLines: 1,
                  minLines: 1,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'email'
                  ),
                ),
                TextField(
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
                    onPressed: () {},
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
