import 'package:expenses/widgets/expenses_list/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:expenses/widgets/new_expense.dart';
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
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registerExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registerExpenses.indexOf(expense);
    setState(() {
      _registerExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Excpense  deleted!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registerExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No Expense Found.'),
    );

    if (_registerExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registerExpenses,
        onRemoveExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
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
        children: [const Text('chart'), Expanded(child: mainContent)],
      ),
    );
  }
}
