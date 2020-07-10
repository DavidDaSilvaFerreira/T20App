import 'package:flutter/material.dart';
import 'package:t20app/app/pages/Ficha/basic_status_page.dart';
import 'package:t20app/app/pages/my_home_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: BasicStatusPage(),
    );
  }
}
