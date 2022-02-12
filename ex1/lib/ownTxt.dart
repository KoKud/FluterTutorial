import 'package:flutter/material.dart';

class OwnTxt extends StatelessWidget {
  String _text;
  OwnTxt(this._text);
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(fontSize: 30),
    );
  }
}
