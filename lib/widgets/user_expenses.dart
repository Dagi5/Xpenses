// this will hold both the expense list and expense adding form
import 'package:flutter/material.dart';

import './expenses_list.dart';
import './new_expenses.dart';
import '../models/expenses.dart';

class UserExpenses extends StatefulWidget {
  @override
  _UserExpensesState createState() => _UserExpensesState();
}

class _UserExpensesState extends State<UserExpenses> {
//-----------------------------expence list holder------------------------------
//TODO: let the user add expenses dynamicaly through the app

  final List<Expenses> _userExpenses = [
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

//-----------------------------new expence creater------------------------------
  void _addNewExpense(String txTitle, double txAmount) {
    final newEx = Expenses(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userExpenses.add(newEx);
    });
  }
//--------------------------##-new expence creater-##---------------------------

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewExpenses(_addNewExpense),
      ExpensesList(_userExpenses),
    ]);
  }
}
