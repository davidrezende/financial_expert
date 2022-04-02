import 'package:financial_expert/components/expense_list.dart';
import 'package:financial_expert/provider/expenses.dart';
import 'package:financial_expert/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ExpensesProvider expenses = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.EXPENSE_FORM);
              },
            ),
          ],
        ),
        body: const ExpenseList());
  }
}
