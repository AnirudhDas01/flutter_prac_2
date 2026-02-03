import 'package:flutter/material.dart';
import 'package:manage_states/main.dart';

class IntoPage extends StatelessWidget {
  const IntoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Change Screen"),
      ),
      body: Column(
        children: [
          Text("Screen 2"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (builder) => MyHomePage()),
              );
            },
            child: Text("Change"),
          ),
        ],
      ),
    );
  }
}
