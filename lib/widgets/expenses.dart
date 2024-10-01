import 'package:expenses/widgets/expenses_list/expenses_list.dart';
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
  void _openModalInput() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('MOdal bottom sheet'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            style: TextStyle(color: Color.fromARGB(255, 8, 149, 214)),
            'Expense Tracker',
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openModalInput,
            icon: const Icon(Icons.add),
          )
        ],
      ),
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
