import 'dart:convert';

class Transaction {
  final String title;
  final String description;
  final String date;
  final int amount;
  final String transactionType;

  Transaction({
    required this.title,
    required this.description,
    required this.date,
    required this.amount,
    required this.transactionType,
  });

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      date: map['date'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      transactionType: map['transactionType'] ?? '',
    );
  }
}
