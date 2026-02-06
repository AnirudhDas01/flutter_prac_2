import 'package:flutter/material.dart';
import 'package:manage_states/list_map_provider.dart';
import 'package:provider/provider.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    var nameContoller = TextEditingController();
    var numberContoller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer(
        builder: (ctx, provider, _) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nameContoller,
                    decoration: InputDecoration(label: Text("Enter Name")),
                  ),
                  TextField(
                    controller: numberContoller,
                    decoration: InputDecoration(label: Text("Enter Number")),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (nameContoller.text.isNotEmpty &&
                          numberContoller.text.isNotEmpty) {
                        context.read<ListMapProvider>().addData({
                          "name": nameContoller.text.toString(),
                          "contact": numberContoller.text,
                          "is_read": true,
                        });

                        Navigator.pop(context);
                      }
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
