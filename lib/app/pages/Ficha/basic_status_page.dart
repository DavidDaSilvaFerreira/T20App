import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t20app/app/components/atributes/atributes_widget.dart';
import 'package:t20app/app/components/expertises/expertises_widget.dart';

class BasicStatusPage extends StatefulWidget {
  const BasicStatusPage({Key key}) : super(key: key);

  @override
  _BasicStatusPageState createState() => _BasicStatusPageState();
}

class _BasicStatusPageState extends State<BasicStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atributos e Perícias'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const <Widget>[
          AtributesWidget(),
          ExpertisesWidget(),
        ],
      )),
    );
  }
}
