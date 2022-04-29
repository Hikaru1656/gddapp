import 'package:cloud_firestore/cloud_firestore.dart' as cloud_firestore;
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool? value = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      value = e;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        centerTitle: true,
      ),
      body: Center(
        child: Checkbox(
          value: value,
          onChanged: _handleCheckbox,
        ),
      ),
    );
  }
}
