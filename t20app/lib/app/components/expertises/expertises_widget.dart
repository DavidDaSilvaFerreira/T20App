import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/expertises/controllers/expertises_values_controller.dart';
import 'package:t20app/app/components/expertises/expertise_widget.dart';
import 'package:t20app/app/components/expertises/models/expertise_model.dart';

class ExpertisesWidget extends StatelessWidget {
  const ExpertisesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExpertiseModel acr =
        ExpertisesValuesController.instance.expertises.elementAt(0);
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Text("Nível do Personagem: ")),
              Expanded(
                  child: TextField(
                      keyboardType: TextInputType.number,
                      controller: TextEditingController(
                          text: ExpertisesValuesController.instance
                              .getCharLevel()
                              .toString()),
                      textAlign: TextAlign.center,
                      onChanged: (text) {
                        ExpertisesValuesController.instance
                            .setCharLevel(int.parse(text));
                      }))
            ],
          ),
          /* new ListView.builder(
              itemCount: ExpertisesValuesController.instance.expertises.length,
              itemBuilder: (BuildContext context, int index) {
                Column(
                  children: [
                    //ExpertiseWidget(ExpertisesValuesController.instance.expertises.elementAt(index)),
                    Text('oi'),
                  ],
                );
              }),*/
          ExpertiseWidget(expertise2: acr),
        ],
      ),
    );
  }
}
