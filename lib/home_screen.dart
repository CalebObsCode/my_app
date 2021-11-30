import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home(Text text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Icon(
            Icons.credit_card, size: 160.0, 
            color: Colors.blueGrey,
            )
        ],
      ),
    );
  }
}