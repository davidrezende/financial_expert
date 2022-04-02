import 'package:financial_expert/provider/expenses.dart';
import 'package:financial_expert/routes/app_routes.dart';
import 'package:financial_expert/views/expense_form.dart';
import 'package:financial_expert/views/expense_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ExpensesProvider()),
      ],
      child: MaterialApp(
          title: 'Financial Expert',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            AppRoutes.HOME: (_) => ExpensePage(),
            AppRoutes.EXPENSE_FORM: (_) => ExpenseForm(),
          }),
    );
  }
}
