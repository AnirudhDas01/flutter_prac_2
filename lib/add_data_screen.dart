import 'package:flutter/material.dart';
import 'package:manage_states/list_map_provider.dart';
import 'package:provider/provider.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer(
        builder: (ctx, provider, _) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<ListMapProvider>().addData({
                  "name": "Ashmit",
                  "contact": 9861234342,
                  "is_read": true,
                });
              },
              child: Text("Add"),
            ),
          );
        },
      ),
    );
  }
}
