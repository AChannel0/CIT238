import 'package:flutter/material.dart';
import 'package:flutter_layout/text_layout.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 10, 19),
        title: Text('Cereus',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            )),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: <Widget>[
            Image.asset('assets/logo.jpg'),
            TextLayout(),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
  }
}
