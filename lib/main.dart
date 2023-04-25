import 'package:flutter/material.dart';
import 'package:flutter_layout/about_screen.dart';
import 'package:flutter_layout/home.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Color.fromARGB(255, 15, 16, 17),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        primaryColor: Color.fromARGB(255, 9, 11, 24),
        appBarTheme: AppBarTheme(
          elevation: 5,
          titleTextStyle: TextStyle(
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
