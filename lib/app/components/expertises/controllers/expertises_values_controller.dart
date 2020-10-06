import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/expertises/models/expertise_model.dart';

class ExpertisesValuesController {
  static final ExpertisesValuesController instance =
      ExpertisesValuesController._();
  
  ExpertisesValuesController._();

  final List<ExpertiseModel> expertises = [
    ExpertiseModel("Acrobacia+", "Destreza"),
    ExpertiseModel("Adestramento*", "Carisma"),
    ExpertiseModel("Atletismo", "Força"),
    ExpertiseModel("Atuação", "Carisma"),
    ExpertiseModel("Cavalgar", "Destreza"),
    ExpertiseModel("Conhecimento*", "Inteligência"),
    ExpertiseModel("Cura", "Sabedoria"),
    ExpertiseModel("Diplomacia", "Carisma"),
    ExpertiseModel("Enganação", "Carisma"),
    ExpertiseModel("Fortitude", "Constituição"),
    ExpertiseModel("Furtividade+", "Destreza"),
    ExpertiseModel("Guerra*", "Inteligência"),
    ExpertiseModel("Iniciativa", "Destreza"),
    ExpertiseModel("Intimidação", "Carisma"),
    ExpertiseModel("Intuição", "Sabedoria"),
    ExpertiseModel("Investigação", "Inteligência"),
    ExpertiseModel("Jogatina", "Carisma"),
    ExpertiseModel("Ladinagem*+", "Destreza"),
    ExpertiseModel("Luta", "Força"),
    ExpertiseModel("Misticismo*", "Inteligência"),
    ExpertiseModel("Nobreza*", "Inteligência"),
    ExpertiseModel("Ofício", "Inteligência"),
    ExpertiseModel("Ofício", "Inteligência"),
    ExpertiseModel("Percepção", "Sabedoria"),
    ExpertiseModel("Pilotagem", "Destreza"),
    ExpertiseModel("Pontaria", "Destreza"),
    ExpertiseModel("Reflexos", "Destreza"),
    ExpertiseModel("Religião", "Sabedoria"),
    ExpertiseModel("Sobrevivência", "Sabedoria"),
    ExpertiseModel("Vontade", "Sabedoria"),
  ];

  final charLevel = ValueNotifier<int>(1);

  int getCharLevel() {
    return charLevel.value;
  }

  void setCharLevel(int level) {
    charLevel.value = level;
  }
}
