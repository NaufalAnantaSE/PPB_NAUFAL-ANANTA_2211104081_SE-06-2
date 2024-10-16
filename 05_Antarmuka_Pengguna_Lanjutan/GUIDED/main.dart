import 'package:flutter/material.dart';
import 'jenis_list_view.dart';
import 'flexible_expanded.dart'; // Importing the ListView file
import 'custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListView Example'),
        backgroundColor: const Color.fromARGB(255, 255, 214, 33),
      ),
      body:
      Custom()
      // JenisListView()
      // FlexibleExpandedScreen(), // Calling the ListView from jenis_list_view.dart
    );
  }
}
