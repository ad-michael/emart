import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:commerce_shop/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("Profile"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Profile!'),
      ),
    );
  }
}