import 'package:flutter/material.dart';

import './textControl.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = 'That is a txt';

  void _changeTxt(String randomTxt) {
    setState(() {
      _text = randomTxt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(_text)),
            body: TextControl(_text, _changeTxt)));
  }
}
