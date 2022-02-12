import 'package:flutter/material.dart';

import './ownTxt.dart';

class TextControl extends StatelessWidget {
  String _text;
  Function _changeTxt;
  TextControl(this._text, this._changeTxt);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OwnTxt(_text),
        RaisedButton(
          onPressed: () => _changeTxt('Same random text'),
          child: Text('PRESS ME!'),
        )
      ],
    );
  }
}
