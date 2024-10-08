import 'package:flutter/material.dart';
import 'package:card_mvvm_app/models/User.dart';
import 'package:card_mvvm_app/services/UserService.dart';

class UserViewModel extends ChangeNotifier {
  final UserService _userService = UserService();
  List<User> _users = [];

  List<User> get users => _users;

  Future<void> fetchUsers() async {
    _users = await _userService.fetchUsers();
    notifyListeners();
  }
}
