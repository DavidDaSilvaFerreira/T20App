import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:t20app/app/controller/modifier_controller.dart';

class AtributeWidget extends StatelessWidget {
  const AtributeWidget({Key key, this.atribute}) : super(key: key);

  final String atribute;

  @override
  Widget build(BuildContext context) {
    ModifierController modifierController = ModifierController();
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              this.atribute,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ValueListenableBuilder(
                valueListenable: modifierController.modifierValue,
                builder: (context, modifier, children) {
                  return Text(
                    modifier.toString(),
                    style: TextStyle(fontSize: 20),
                  );
                }),
            TextField(
              keyboardType: TextInputType.number,
              controller: TextEditingController(text: "10"),
              textAlign: TextAlign.center,
              onChanged: (text) {
                modifierController.changeModifier("$text");
              },
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            )
          ],
        ),
      ),
    );
  }
}
