//this is where new expenses are acceped from the user
import 'package:flutter/material.dart';
import './user_expenses.dart';

class NewExpenses extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewExpense;

  NewExpenses(this.addNewExpense);

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
            decoration: InputDecoration(
              labelText: "Title",
            ),
            controller: titleController,
          ),
          //FIXME: add logic to this so only numbers are accepted as amount
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
              addNewExpense(
                  titleController.text, double.parse(amountController.text));
            },
          ),
        ],
      ),
    );
//--------------------------##-expence input-##---------------------------------;
  }
}
