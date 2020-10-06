import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:t20app/app/components/atributes/controllers/atributes_values_controller.dart';
import 'package:t20app/app/components/atributes/models/atribute_model.dart';

class AtributeWidget extends StatelessWidget {
  const AtributeWidget({Key key, this.atributeName}) : super(key: key);

  final String atributeName;

  @override
  Widget build(BuildContext context) {
    final AtributeModel atribute = AtributesValuesController
        .instance.atributesModels
        .firstWhere((element) => element.name == atributeName);
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            atribute.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          ValueListenableBuilder(
              valueListenable: atribute.atributeModifier,
              builder: (context, modifier, children) {
                return Text(
                  modifier.toString(),
                  style: const TextStyle(fontSize: 20),
                );
              }),
          TextField(
            keyboardType: TextInputType.number,
            controller: TextEditingController(text: atribute.atributeValue),
            textAlign: TextAlign.center,
            onChanged: (text) {
              atribute.changeAtributeValue("$text");
            },
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
          )
        ],
      ),
    );
  }
}
