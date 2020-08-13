import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/atributes/controllers/atributes_values_controller.dart';
import 'package:t20app/app/components/expertises/models/expertise_model.dart';
import 'package:t20app/app/components/expertises/controllers/expertise_controller.dart';

class ExpertisesValuesController {
  static final ExpertisesValuesController instance =
      ExpertisesValuesController._();
  ExpertisesValuesController._();

  final List<ExpertiseModel> expertises = [
    new ExpertiseModel("Acrobacia+", "Destreza"),
    new ExpertiseModel("Adestramento*", "Carisma"),
    new ExpertiseModel("Atletismo", "Força"),
    new ExpertiseModel("Atuação", "Carisma"),
    new ExpertiseModel("Cavalgar", "Destreza"),
    new ExpertiseModel("Conhecimento*", "Inteligência"),
    new ExpertiseModel("Cura", "Sabedoria"),
    new ExpertiseModel("Diplomacia", "Carisma"),
    new ExpertiseModel("Enganação", "Carisma"),
    new ExpertiseModel("Fortitude", "Constituição"),
    new ExpertiseModel("Furtividade+", "Destreza"),
    new ExpertiseModel("Guerra*", "Inteligência"),
    new ExpertiseModel("Iniciativa", "Destreza"),
    new ExpertiseModel("Intimidação", "Carisma"),
    new ExpertiseModel("Intuição", "Sabedoria"),
    new ExpertiseModel("Investigação", "Inteligência"),
    new ExpertiseModel("Jogatina", "Carisma"),
    new ExpertiseModel("Ladinagem*+", "Destreza"),
    new ExpertiseModel("Luta", "Força"),
    new ExpertiseModel("Misticismo*", "Inteligência"),
    new ExpertiseModel("Nobreza*", "Inteligência"),
    new ExpertiseModel("Ofício", "Inteligência"),
    new ExpertiseModel("Ofício", "Inteligência"),
    new ExpertiseModel("Percepção", "Sabedoria"),
    new ExpertiseModel("Pilotagem", "Destreza"),
    new ExpertiseModel("Pontaria", "Destreza"),
    new ExpertiseModel("Reflexos", "Destreza"),
    new ExpertiseModel("Religião", "Sabedoria"),
    new ExpertiseModel("Sobrevivência", "Sabedoria"),
    new ExpertiseModel("Vontade", "Sabedoria"),
  ];

  final charLevel = ValueNotifier<int>(1);

  getCharLevel() {
    return charLevel.value;
  }

  setCharLevel(int level) {
    charLevel.value = level;
  }
}
