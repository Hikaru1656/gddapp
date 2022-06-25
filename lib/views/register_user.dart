import 'package:flutter/material.dart';
import 'package:gddapp/views/main_page.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
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
                  autofocus: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'メールアドレスを入力してください'
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '数字4ケタのパスコードを入力してください。'
                  ),
                ),
                ElevatedButton(
                  child: Text('登録'),
                  onPressed: () {

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
