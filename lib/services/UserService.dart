import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:card_mvvm_app/models/User.dart';

class UserService {
  Future<List<User>> fetchUsers() async {
    try {
      final dynamic response = await rootBundle.loadString('assets/users.json');
      final List<dynamic> data = jsonDecode(response);

      return data.map((userJson) => User.fromJson(userJson)).toList();
    } catch (e) {
      print("Algo salio mal: $e");
      throw Exception("No le sabes");
    }
  }
}
