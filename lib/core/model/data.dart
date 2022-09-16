import 'dart:convert';

import 'transaction.dart';
import 'user.dart';
import 'wallet.dart';

class HomeScreenData {
  final User user;
  final Wallet wallet;
  final List<Transaction> transactionList;

  HomeScreenData({
    required this.user,
    required this.wallet,
    required this.transactionList,
  });

  factory HomeScreenData.fromMap(Map<String, dynamic> map) {
    return HomeScreenData(
      user: User.fromMap(map['user']),
      wallet: Wallet.fromMap(map['wallet']),
      transactionList: List<Transaction>.from(
        map['transactionList']?.map(
          (x) => Transaction.fromMap(x),
        ),
      ),
    );
  }
}
