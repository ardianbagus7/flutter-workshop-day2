import 'dart:convert';

class Wallet {
  final int amount;
  final int returnAmount;

  Wallet({
    required this.amount,
    required this.returnAmount,
  });

  factory Wallet.fromMap(Map<String, dynamic> map) {
    return Wallet(
      amount: map['amount']?.toInt() ?? 0,
      returnAmount: map['returnAmount']?.toInt() ?? 0,
    );
  }
}
