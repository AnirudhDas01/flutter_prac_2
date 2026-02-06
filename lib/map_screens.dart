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
                        trailing: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: data[index]['is_read']
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
