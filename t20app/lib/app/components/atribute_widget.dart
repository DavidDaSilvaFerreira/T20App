import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:t20app/app/controller/modifier_controller.dart';

class AtributeWidget extends StatelessWidget {
  const AtributeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ModifierController modifierController = ModifierController();
    return Container(
      child: Column(
        children: <Widget>[
          Text('Atributo'),
          ValueListenableBuilder(
              valueListenable: modifierController.modifierValue,
              builder: (context, modifier, children) {
                return Text(modifier.toString());
              }),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (text) {
              modifierController.changeModifier("$text");
            },
            //inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
          )
        ],
      ),
    );
  }
}
