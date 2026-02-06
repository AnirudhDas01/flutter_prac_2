import 'package:flutter/material.dart';
import 'package:manage_states/add_data_screen.dart';
import 'package:manage_states/list_map_provider.dart';
import 'package:provider/provider.dart';

class ListMapScreen extends StatelessWidget {
  const ListMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThePage();
  }
}

class ThePage extends StatelessWidget {
  const ThePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Contacts"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox.expand(
        child: Consumer<ListMapProvider>(
          builder: (context, provider, _) {
            var data = provider.getData();
            return data.isNotEmpty
                ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (item, index) {
                      return ListTile(
                        title: Text(data[index]['name'].toString()),
                        subtitle: Text(data[index]['contact'].toString()),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  context.read<ListMapProvider>().updateData({
                                    "name": "Anirudh",
                                    "contact": 11671661121,
                                    "is_read": false,
                                  }, index);
                                },
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<ListMapProvider>().deleteData(
                                    index,
                                  );
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : Text("No Data Here");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right_outlined),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddDataScreen()),
          );
        },
      ),
    );
  }
}
