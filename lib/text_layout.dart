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
            "Welcome, dear user! \n\nCereus is a collection of tropical cacti that are known for putting on a spectacular, aromatic exhibit in the evening. The Cereus application is designed to inspire people to appreciate, study, and view cacti plants. With this app, users can learn more about the different types of cacti, their unique features, and their natural habitats.\n\nStay tuned for more features coming soon! If you have any feedback or questions, please don't hesitate to contact us at 093-112-763. We would love to hear from you and are always open to suggestions for how we can improve the app.",
            style: TextStyle(
                color: Color.fromARGB(255, 66, 75, 114),
                fontFamily: 'CrimsonText',
                fontSize: 18),
          ),
        ),
      ],
    );
  }
}
