import 'package:financial_expert/components/expense_tile.dart';
import 'package:financial_expert/data/expense_data.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var expenses = {...DUMMY_EXPENSES};

    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, i) => ExpenseTile(expenses.values.elementAt(i)),
      );
  }
}
