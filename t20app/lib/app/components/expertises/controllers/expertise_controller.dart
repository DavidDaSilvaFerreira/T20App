import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/atributes/controllers/atributes_values_controller.dart';
import 'package:t20app/app/components/atributes/models/atribute_model.dart';
import 'package:t20app/app/components/expertises/controllers/expertises_values_controller.dart';

class ExpertiseController {
  final totalValue = ValueNotifier<int>(0);
  final trainingValue = ValueNotifier<int>(0);
  final _otherValue = ValueNotifier<int>(0);
  final String atributeName;
  AtributeModel atribute;

  ExpertiseController(this.atributeName) {
    atribute = AtributesValuesController.instance.atributesModels
        .firstWhere((element) => element.name == 'Destreza');
    changeExpertise();
  }

  changeExpertise() {
    totalValue.value = trainingValue.value +
        _otherValue.value +
        ((ExpertisesValuesController.instance.getCharLevel() / 2).floor()) +
        int.parse(atribute.atributeValue);
  }

  set trainValue(bool trained) {
    if (trained) {
      int level = ExpertisesValuesController.instance.getCharLevel();
      if (level < 7) {
        this.trainingValue.value = 2;
      } else if (level < 15) {
        this.trainingValue.value = 4;
      } else {
        this.trainingValue.value = 6;
      }
    } else {}
    changeExpertise();
  }

  get trainValue => this.trainingValue.value;

  get other => this._otherValue.value;

  set other(int value) {
    this._otherValue.value = value;
    changeExpertise();
  }

  get expertiseValue => this.expertiseValue.value;
}
