import 'package:flutter/material.dart';

class gridView extends StatefulWidget {
  const gridView({super.key});

  @override
  State<gridView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 98),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.account_circle, size: 100),
                Text('irpanzy')
              ],
            ),
            color: const Color.fromARGB(255, 0, 163, 122),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.account_balance_wallet_sharp, size: 100),
                Text('Mandiri')
              ],
            ),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.account_balance, size: 100),
                Text('Imba JP')
              ],
            ),
            color: const Color.fromARGB(255, 255, 66, 214),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.add_alarm_sharp, size: 100),
                Text('Alarm')
              ],
            ),
            color: const Color.fromARGB(255, 94, 0, 81),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('gridView 5'),
            color: const Color.fromARGB(255, 255, 255, 109),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('gridView 6'),
            color: const Color.fromARGB(255, 101, 0, 119),
          ),
        ],
      ),
    );
  }
}
