import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/atributes/models/atribute_model.dart';
import 'package:t20app/app/components/expertises/controllers/expertise_controller.dart';

class ExpertiseModel {
  final String name;
  ExpertiseController expertiseValue;

  ExpertiseModel(this.name, String atributeName) {
    expertiseValue = new ExpertiseController(atributeName);
  }

  get expertiseName => name;
}
