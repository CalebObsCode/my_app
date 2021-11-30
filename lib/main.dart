import 'package:flutter/material.dart';
import 'package:my_app/nav.dart';


// Function to run main app
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Nav(),
    );
  }
}

