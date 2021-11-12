// ignore_for_file: prefer_const_constructors
//TODO:clear out all print function when code is done with development and testing
import 'package:flutter/material.dart';
import 'widgets/expenses_list.dart';
import 'widgets/new_expenses.dart';
import 'models/expenses.dart';

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

class MyHomePage extends StatefulWidget {
  //shows new expance adding widget when add button is clicked
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

//-----------------------------add new expense box------------------------------

  void _startAddNewExpense(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewExpenses(_addNewExpense);
        });
  }
//--------------------------##-add new expense box-##---------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xpenses"),
        actions: <Widget>[
          //light mode & dark mode button
          IconButton(
            icon: Icon(Icons.nights_stay_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
              ExpensesList(_userExpenses),
            ]),
      ),
      //add expense button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _startAddNewExpense(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
