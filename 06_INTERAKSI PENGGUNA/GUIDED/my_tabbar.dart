import 'package:flutter/material.dart';

class myTabbar extends StatelessWidget {
  const myTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Menu Tab Bar"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.food_bank),
                text: "Menu",
              ),
              Tab(
                icon: Icon(Icons.calendar_month),
                text: "Calendar",
              ),
              Tab(
                icon: Icon(Icons.history),
                text: "History",
              ),
            ]),
            backgroundColor: Colors.amber,
          ),
          body: const TabBarView(children: [
            Center(
              child: Text("Ini Konten Menu"),
            ),
            Center(
              child: Text("Ini Konten Calendar"),
            ),
            Center(
              child: Text("Ini Konten History"),
            ),
          ])),
    );
  }
}