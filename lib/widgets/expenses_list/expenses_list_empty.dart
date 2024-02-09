import 'package:flutter/material.dart';

class ExpensesListEmpty extends StatelessWidget {
  const ExpensesListEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No expenses found.',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            'Start adding some!',
            style: TextStyle(fontSize: 22, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
