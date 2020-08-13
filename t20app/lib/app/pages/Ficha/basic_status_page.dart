import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t20app/app/components/atributes/atributes_widget.dart';
import 'package:t20app/app/components/expertises/expertises_widget.dart';

class BasicStatusPage extends StatefulWidget {
  BasicStatusPage({Key key}) : super(key: key);

  @override
  _BasicStatusPageState createState() => _BasicStatusPageState();
}

class _BasicStatusPageState extends State<BasicStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atributos e Perícias'),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            AtributesWidget(),
            ExpertisesWidget(),
          ],
        )),
      ),
    );
  }
}
