// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xpenses",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xpenses"),
      ),
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                    "CHART"), //TODO: add chart content instead of Text widget
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            Card(
              child: Text(
                  "LIST OF TEXT"), //TODO: add the list of texts in this widget
            ),
          ]),
    );
  }
}
