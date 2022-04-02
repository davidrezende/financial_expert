import 'dart:math';

import 'package:financial_expert/data/expense_data.dart';
import 'package:financial_expert/model/expense.dart';
import 'package:flutter/cupertino.dart';

//implement observer in changenotifier
class ExpensesProvider with ChangeNotifier {
  final Map<String, Expense> _items = {...DUMMY_EXPENSES};

  List<Expense> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Expense byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Expense expense) {
    if (expense == null) {
      return;
    }
    if (expense.id != null &&
        expense.id.toString().trim().isNotEmpty &&
        _items.containsKey(expense.id)) {
      _items.update(expense.id.toString(), (_) => expense);
    } else {
      final id = Random().nextDouble().toInt();

      _items.putIfAbsent(
          id.toString(),
          () => Expense(
              id: id.toInt(),
              name: expense.name,
              month: 4,
              type: 'D',
              value: expense.value,
              year: 2022));
    }

    notifyListeners();
  }


  void remove(Expense expense){
    if(expense.id != null){
      _items.remove(expense.id);
    }
  }
}
