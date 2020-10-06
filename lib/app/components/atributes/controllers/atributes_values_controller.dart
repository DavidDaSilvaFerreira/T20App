import 'package:t20app/app/components/atributes/controllers/modifier_controller.dart';
import 'package:t20app/app/components/atributes/models/atribute_model.dart';

class AtributesValuesController {
  static final AtributesValuesController instance =
      AtributesValuesController._();
  AtributesValuesController._();

  final List<AtributeModel> atributesModels = [
    new AtributeModel('Força', '10', new ModifierController()),
    new AtributeModel('Destreza', '10', new ModifierController()),
    new AtributeModel('Constituição', '10', new ModifierController()),
    new AtributeModel('Inteligência', '10', new ModifierController()),
    new AtributeModel('Sabedoria', '10', new ModifierController()),
    new AtributeModel('Carisma', '10', new ModifierController()),
  ];
}
