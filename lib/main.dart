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
//-----------------------------expence list holder------------------------------
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
//--------------------------##-expence list holder-##---------------------------

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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

//-----------------------------expence input------------------------------------
            //this will accept new expenses from the user
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Title",
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Amount",
                    ),
                    controller: amountController,
                  ),
                  FlatButton(
                    child: Text(
                      "Add Expense",
                    ),
                    textColor: Colors.purple,
                    onPressed: () {
                      print(titleController.text);
                      print(amountController.text);
                    },
                  ),
                ],
              ),
            ),
//--------------------------##-expence input-##---------------------------------

//-----------------------------expence list-------------------------------------
            Column(
              children: expenses.map((ex) {
                //TODO: decorate the card to look better
                //change the date format to a more readable form

                //this card will hold the cahrts that will show the weeky expenses
                return (Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$${ex.amount}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),

                    //this column will hold the lost of all expenses
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ex.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          Text(
                            ex.date.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ])
                  ]),
                ));
              }).toList(),
            ),
//--------------------------##-expence list-##----------------------------------
          ]),
    );
  }
}
