import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:commerce_shop/constants/colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the History Screen!'),
      ),
    );
  }
}