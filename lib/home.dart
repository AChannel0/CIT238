import 'package:flutter/material.dart';
import 'package:flutter_layout/app_drawer.dart';
import 'package:flutter_layout/text_layout.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _collectionItems = [
    {
      'name': 'EPIPHYLLUM OXYPETALUM',
      'image': '../assets/1.png',
      'description':
          'Also known as the Queen of the Night, is a night-blooming cactus with fragrant white flowers that only bloom once a year.'
    },
    {
      'name': 'SELENICEREUS GRANDIFLORUS',
      'image': '../assets/2.png',
      'description':
          'The large-flowered torch cactus, produces large, fragrant, white flowers that open at night and last only one night.'
    },
    {
      'name': 'HYLOCEREUS UNDATUS',
      'image': '../assets/3.png',
      'description':
          'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance.'
    },
    {
      'name': 'CEREUS PERUVIANUS',
      'image': '../assets/4.png',
      'description':
          'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.'
    },
    {
      'name': 'HYLOCEREUS UNDATUS',
      'image': '../assets/5.png',
      'description':
          'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance.'
    },
    {
      'name': 'CEREUS PERUVIANUS',
      'image': '../assets/6.png',
      'description':
          'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.'
    },
    {
      'name': 'HYLOCEREUS UNDATUS',
      'image': '../assets/7.png',
      'description':
          'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance.'
    },
    {
      'name': 'CEREUS PERUVIANUS',
      'image': '../assets/8.png',
      'description':
          'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.'
    },
    {
      'name': 'HYLOCEREUS UNDATUS',
      'image': '../assets/9.png',
      'description':
          'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance.'
    },
    {
      'name': 'CEREUS PERUVIANUS',
      'image': '../assets/10.png',
      'description':
          'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.'
    },
  ];

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 20),
                child: Text(
                  'CEREUS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'CrimsonText',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 0),
              child: Text(
                "NIGHT BLOOMING CACTI PLANTS",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'CrimsonText',
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                      color: Color.fromARGB(255, 249, 252, 255)),
                  hintText: 'Search Collections',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 167, 183, 197),
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: _collectionItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            _collectionItems[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            _collectionItems[index]['name'],
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, bottom: 10, right: 10, top: 0),
                          child: Text(
                            _collectionItems[index]['description'],
                            style: TextStyle(
                              color: Color.fromARGB(255, 167, 183, 197),
                              fontSize: 11.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
