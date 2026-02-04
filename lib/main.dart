import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  // ignore: constant_identifier_names
  static const String NAME_KEY = 'name';
  String fetchedVal = "No Name Saved";
  @override
  void initState() {
    getValue();
    super.initState();
  }

  void getValue() async {
    var pref = await SharedPreferences.getInstance();

    var val = pref.getString(NAME_KEY);
    if (val!.isNotEmpty) {
      setState(() {
        fetchedVal = val;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shared Preference"),
      ),
      body:  Placeholder(),
    );
  }
}
