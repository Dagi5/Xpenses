// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './expenses.dart';

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
  //TODO: let the user add expenses dynamicaly through the app
  final List<Expenses> expenses = [
    Expenses(
      id: "t1",
      title: "New shirt",
      amount: 300,
      date: DateTime.now(),
    ),
    Expenses(
      id: "t2",
      title: "New shoes",
      amount: 850,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xpenses"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,

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
            Column(
              children: expenses.map((ex) {
                //TODO: decorate the card to look better
                //change the date format to a more readable form

                return (Card(
                  child: Row(children: <Widget>[
                    Text(ex.amount.toString()),
                    Column(children: <Widget>[
                      Text(ex.title),
                      Text(ex.date.toString()),
                    ])
                  ]),
                ));
              }).toList(),
            ),
          ]),
    );
  }
}
