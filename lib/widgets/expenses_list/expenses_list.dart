import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/widgets/expenses_list/expense_tile.dart';
import 'package:expensetracker/widgets/expenses_list/expenses_list_empty.dart';
import 'package:flutter/material.dart';


class ExpensesList extends StatelessWidget {
  final List<Expense> registeredExpenses;
  final void Function({required Expense expense}) removeExpense;

  const ExpensesList({
    super.key,
    required this.registeredExpenses,
    required this.removeExpense,
  });

  @override
  Widget build(BuildContext context) {
    if (registeredExpenses.isEmpty) {
      return const ExpensesListEmpty();
    }

    return ListView.builder(
      itemCount: registeredExpenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(registeredExpenses[index]),
        onDismissed: (direction) =>
            removeExpense(expense: registeredExpenses[index]),
        child: ExpenseTile(expense: registeredExpenses[index]),
      ),
    );
  }
}
