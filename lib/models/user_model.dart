import 'package:flutter/foundation.dart';

class Users {
  final int id;
  final String username;
  final String role;
  final String password;
  final String email;
  final String address;
  final String number;
  final String greenhouse;

  Users({
    required this.id,
    required this.username,
    required this.role,
    required this.password,
    required this.email,
    required this.address,
    required this.number,
    required this.greenhouse,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      address: json['adress'] as String,
      number: json['number'] as String,
      greenhouse: json['greenhouse'] as String,
    );
  }
}
