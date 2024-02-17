import 'package:flutter/material.dart';

class BudgetListRecord {
  final String itemName;

  BudgetListRecord({required this.itemName});
}

void main() {
  // Creating instances of BudgetListRecord
  final officeBudget = BudgetListRecord(itemName: 'Office Budget');
  final externalTransfer = BudgetListRecord(itemName: 'External Transfer');
  final foodAndBev = BudgetListRecord(itemName: 'Food and Bev');
  final travel = BudgetListRecord(itemName: 'Travel');
  final recharge = BudgetListRecord(itemName: 'Recharge');
  final subscription = BudgetListRecord(itemName: 'Subscription');

  // Defining budgetList
  final List<BudgetListRecord> budgetList = [
    officeBudget,
    externalTransfer,
    foodAndBev,
    travel,
    recharge,
    subscription,
  ];

  // Now you can use budgetList
  print(budgetList.map((record) => record
      .itemName)); // Output: (Office Budget, External Transfer, Food and Bev, Travel, Recharge, Subscription)
}
