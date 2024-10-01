import 'package:expenses/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.19,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Pam',
      amount: 9.19,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Virgin',
      amount: 10.19,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Italo',
      amount: 119.19,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('chart'),
          Expanded(
            child: ExpensesList(expenses: _registerExpenses),
          )
        ],
      ),
    );
  }
}
