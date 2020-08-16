import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/view/layout_template.dart';
import 'package:flutter/material.dart';


void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutTemplate(),
    );
  }
}
