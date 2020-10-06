import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/expertises/models/expertise_model.dart';

import 'controllers/expertises_values_controller.dart';

class ExpertiseWidget extends StatelessWidget {
  const ExpertiseWidget({Key key, this.expertise2}) : super(key: key);

  final ExpertiseModel expertise2;

  @override
  Widget build(BuildContext context) {
    final ExpertiseModel expertise =
        ExpertisesValuesController.instance.expertises.elementAt(0);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(expertise.expertiseName)),
          Expanded(
              child: ValueListenableBuilder(
                  valueListenable: expertise.expertiseValue.totalValue,
                  builder: (context, atributeValue, children) {
                    return Text(
                      (atributeValue).toString(),
                      style: const TextStyle(fontSize: 20),
                    );
                  })),
          Expanded(
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(
                      text: expertise.expertiseValue.other.toString()),
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    expertise.expertiseValue.other = int.parse(text);
                  })),
        ],
      ),
    );
  }
}
