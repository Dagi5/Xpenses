//this is where new expence tabs on the list are stored and created
import 'package:flutter/material.dart';

import '../models/expenses.dart';

class ExpensesList extends StatelessWidget {
  final List<Expenses> expenses;

  ExpensesList(this.expenses);

  @override
  Widget build(BuildContext context) {
    return
//-----------------------------expence list-------------------------------------

        Container(
      height: 700,
      child: ListView.builder(
        itemBuilder: (buildContext, index) {
          //TODO: decorate the card to look better

          //this card will hold the charts that will show the weeky expenses
          return (Card(
            child: Row(children: <Widget>[
              Container(
                // ignore: prefer_const_constructors
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
                  "\$${expenses[index].amount.toStringAsFixed(2)}",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),

              //this column will hold the list of all expenses
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      expenses[index].title,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    //TODO: convert the date into a more readable and simple form
                    Text(
                      expenses[index].date.toString(),
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ])
            ]),
          ));
        },
        itemCount: expenses.length,
      ),
    );
//--------------------------##-expence list-##----------------------------------;
  }
}
