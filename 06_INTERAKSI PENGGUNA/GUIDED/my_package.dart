import 'package:flutter/material.dart';

class myPackage extends StatefulWidget {
  const myPackage({super.key});

  @override
  State<myPackage> createState() => _myPackageState();
}

class _myPackageState extends State<myPackage> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum 6"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Masukkan Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Masukkan Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'This is Elevated Button',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: Text(
                'Ini adalah Text Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            DropdownButton<String>(
              value: selectedValue,
              isExpanded: true,
              hint: Text('Silahkan Pilih Opsi'),
              items: <String>['AAA', 'BBB', 'CCC']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  selectedValue = newvalue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}