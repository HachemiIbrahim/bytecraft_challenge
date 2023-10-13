import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Home Screen", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(child: Text("Home Screen")),
    );
  }
}
