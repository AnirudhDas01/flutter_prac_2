import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Constraint Box"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 100, maxHeight: double.infinity),
        child: Container(
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Row(
            spacing: 5,
            children: [
              Text("Hello world", style: TextStyle(color: Colors.white)),
              Text("Hello world", style: TextStyle(color: Colors.white)),
              Text("Hello world", style: TextStyle(color: Colors.white)),
              Text("Hello world", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
