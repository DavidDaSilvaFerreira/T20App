import 'package:flutter/widgets.dart';
import 'package:t20app/app/components/atributes/atribute_column_widget.dart';

class AtributesWidget extends StatelessWidget {
  const AtributesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: AtributeColumn(
            atributes: ['Força', 'Constituição', 'Sabedoria'],
          )),
          Expanded(
              child: AtributeColumn(
            atributes: ['Destreza', 'Inteligência', 'Carisma'],
          )),
        ],
      ),
    );
  }
}
