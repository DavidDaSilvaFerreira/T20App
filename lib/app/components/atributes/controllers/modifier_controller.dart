import 'package:flutter/cupertino.dart';

class ModifierController {
  final modifierValue = ValueNotifier<int>(0);

  changeModifier(String atribute) {
    if (atribute == '' || atribute == null) {
      modifierValue.value = 10;
    } else {
      modifierValue.value = (-5) + ((int.parse(atribute) / 2).floor());
    }
  }
}
