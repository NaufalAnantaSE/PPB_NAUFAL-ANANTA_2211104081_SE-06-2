import 'package:flutter/material.dart';

class JenisListView extends StatelessWidget {
  const JenisListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200];

    var listView = ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text("Entry ${entries[index]}"),
          ),
        );
      },
      itemCount: entries.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 10,
          color: Colors.red, // Separator between items
        );
      },
    );

    return Scaffold(
      
      body: listView,
    );
  }
}
