import 'package:financial_expert/components/expense_list.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: const ExpenseList());
  }
}
