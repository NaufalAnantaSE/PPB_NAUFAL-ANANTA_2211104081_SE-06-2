import 'package:flutter/material.dart';

class listViewScreen extends StatelessWidget {
  const listViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red[200],
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue[200],
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow[200],
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green[200],
            child: Center(child: Text('Type A')),
          ),
        ],
      ),
    );
  }
}