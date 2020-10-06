import 'package:t20app/app/components/expertises/controllers/expertise_controller.dart';

class ExpertiseModel {
  final String name;
  ExpertiseController expertiseValue;

  ExpertiseModel(this.name, String atributeName) {
    expertiseValue = ExpertiseController(atributeName);
  }

  String get expertiseName => name;
}
