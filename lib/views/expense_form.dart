import 'package:financial_expert/model/expense.dart';
import 'package:financial_expert/provider/expenses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, Object> _formData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesa'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                final isValid = _form.currentState?.validate();

                if (isValid != null && isValid) {
                  _form.currentState?.save();
                  Provider.of<ExpensesProvider>(context, listen: false).put(
                    Expense(
                      name: _formData['name'].toString(),
                      value: double.parse(_formData['value'].toString()),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              key: _form,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Descrição'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Inválido';
                      }
                      return null;
                    },
                    onSaved: (value) => _formData['name'] = value!,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Valor'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Inválido';
                      }
                      return null;
                    },
                    onSaved: (value) => _formData['value'] = value!,
                  ),
                ],
              )),
        ));
  }
}
