import 'package:flutter/cupertino.dart';
import 'package:t20app/app/components/atributes/controllers/modifier_controller.dart';

class AtributeModel {
  final String name;
  String value;
  final ModifierController modifier;

  String get atributeValue => value;

  void changeAtributeValue(String newValue) {
    value = newValue;
    modifier.changeModifier(value);
  }

  ValueNotifier<int> get atributeModifier => modifier.modifierValue;

  AtributeModel(this.name, this.value, this.modifier);
}
