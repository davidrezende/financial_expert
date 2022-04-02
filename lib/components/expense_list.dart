import 'package:financial_expert/components/expense_tile.dart';
import 'package:financial_expert/provider/expenses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ExpensesProvider expenses = Provider.of(context);

    return ListView.builder(
        itemCount: expenses.count,
        itemBuilder: (ctx, i) => ExpenseTile(expenses.byIndex(i)),
      );
  }
}
