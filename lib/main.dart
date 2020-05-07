import 'package:flutter/material.dart';
import 'package:networking_example/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.black87),
      home: HomePage(),
    );
  }
}
