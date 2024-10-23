import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan6/my_navbar.dart';
import 'package:pertemuan6/my_package.dart';
import 'package:pertemuan6/my_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2211104081',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home:
          myPackage(),
          myTabbar(),
          myNavbar(),
    );
  }
}
