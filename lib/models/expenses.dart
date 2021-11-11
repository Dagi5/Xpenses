// this is the class for the expenses to be accepted and stored by the app

class Expenses {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Expenses(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});
}
