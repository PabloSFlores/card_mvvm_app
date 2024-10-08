import 'package:card_mvvm_app/models/User.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:card_mvvm_app/view_models/UserViewModel.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de usuarios"),
      ),
      body: FutureBuilder(
        future: Provider.of<UserViewModel>(context, listen: false).fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Consumer<UserViewModel>(
              builder: (context, viewModel, child) {
                return ListView.builder(
                  itemCount: viewModel.users.length,
                  itemBuilder: (context, index) {
                    final User user = viewModel.users[index];

                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.photo),
                        ),
                        title: Text("${user.name} ${user.lastname}"),
                        subtitle: Text(user.email),
                        onTap: () {},
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
