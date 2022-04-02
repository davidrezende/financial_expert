import 'package:financial_expert/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  final Expense expense;
  const ExpenseTile(this.expense);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.payment_sharp),
        ),
        title: Text(expense.name),
        subtitle: Text('R\$ ' + expense.value.toString()),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
                color: Colors.orange,
              ),
               IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
