import 'package:card_mvvm_app/view_models/UserViewModel.dart';
import 'package:card_mvvm_app/views/UserListView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewModel(),
      child: const MaterialApp(
        home: UserListView(),
      ),
    );
  }
}
