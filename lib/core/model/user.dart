import 'dart:convert';

class User {
  final int id;
  final String mobileNumber;
  final String name;
  final String noRekening;

  User({
    required this.id,
    required this.mobileNumber,
    required this.name,
    required this.noRekening,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      mobileNumber: map['mobileNumber'] ?? '',
      name: map['name'] ?? '',
      noRekening: map['noRekening'] ?? '',
    );
  }
}
