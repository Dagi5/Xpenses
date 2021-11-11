// ignore_for_file: prefer_const_constructors
//TODO:clear out all print function when code is done with development and testing
import 'package:flutter/material.dart';
import 'widgets/user_expenses.dart';

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
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
//-----------------------------expence chart------------------------------------
            Container(
              // width: double.infinity,
              child: Card(
                child: Text(
                    "CHART"), //TODO: add chart content instead of Text widget
                elevation: 5,
                color: Colors.blue,
              ),
            ),
//--------------------------##-expence chart-##---------------------------------
            UserExpenses(),
          ]),
    );
  }
}
