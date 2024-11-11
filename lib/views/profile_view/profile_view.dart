import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_test/view_model/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileViewmodel>(
        builder: (context, profileViewmodel, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
      );
    });
  }
}
