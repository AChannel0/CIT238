import 'package:flutter/material.dart';
import 'package:flutter_layout/about_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 9, 11, 24),
        appBarTheme: AppBarTheme(
          elevation: 5,
          titleTextStyle: TextStyle(
            // change from TextTheme
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: AboutScreen(),
    );
  }
}
