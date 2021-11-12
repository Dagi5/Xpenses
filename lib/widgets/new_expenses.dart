//this is where new expenses are acceped from the user
import 'package:flutter/material.dart';

class NewExpenses extends StatefulWidget {
  final Function addNewExpense;

  NewExpenses(this.addNewExpense);

  @override
  State<NewExpenses> createState() => _NewExpensesState();
}

class _NewExpensesState extends State<NewExpenses> {
//-----------------------------submit input data--------------------------------

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final String enteredTitle = titleController.text;
    final double enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount < 1) {
      return; //wont accept this conditions
    }

    widget.addNewExpense(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }
//--------------------------##-submit input data-##-----------------------------

  @override
  Widget build(BuildContext context) {
    return
//-----------------------------expence input------------------------------------
        //this will accept new expenses from the user
        Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: "Title",
            ),
            controller: titleController,
            onSubmitted: (_) => submitData(),
            autofocus: true,
          ),
          //FIXME: add logic to this so only numbers are accepted as amount
          TextField(
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: "Amount",
            ),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submitData(),
          ),
          FlatButton(
            // ignore: prefer_const_constructors
            child: Text(
              "Add Expense",
            ),
            textColor: Colors.purple,
            onPressed: () => submitData(),
          ),
        ],
      ),
    );
//--------------------------##-expence input-##---------------------------------;
  }
}
