import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5, right: 20, top: 20),
            child: Text(
              'About Us',
              style: TextStyle(
                  color: Color.fromARGB(255, 23, 25, 43),
                  fontFamily: 'CrimsonText',
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 20),
          child: Text(
            "Welcome, dear user! Cereus is a collection of tropical cacti that put on a spectacular, aromatic exhibit in the evening. This application inspires people to appreciate, study, and protect cacti plants because of their value to human health and the Earth's delicate ecosystems. Stay updated for more features soon! Please contact us @092-234-567 for more details or feedback.",
            style: TextStyle(
                color: Color.fromARGB(255, 66, 75, 114),
                fontFamily: 'CrimsonText',
                fontSize: 18),
          ),
        ),
        //row
      ],
    );
  }
}
