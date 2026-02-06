import 'package:flutter/material.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Text("Hello World"),
    );
  }
}
