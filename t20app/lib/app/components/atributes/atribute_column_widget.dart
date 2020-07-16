import 'package:flutter/material.dart';

import 'atribute_widget.dart';

class AtributeColumn extends StatelessWidget {
  const AtributeColumn({Key key, this.atributes}) : super(key: key);

  final List<String> atributes;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        AtributeWidget(atributeName: atributes[0]),
        AtributeWidget(atributeName: atributes[1]),
        AtributeWidget(atributeName: atributes[2]),
      ],
    ));
  }
}
