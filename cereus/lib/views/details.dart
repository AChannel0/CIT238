import 'package:firebase_core/firebase_core.dart';
import 'package:cereusfirebase/models/firebaseplant.dart';
import 'package:cereusfirebase/views/home.dart';
import 'package:flutter/material.dart';

import '../shared/firestore.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen({Key? key}) : super(key: key);

  @override
  State<PlantsScreen> createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  FirestoreData? fireData;

  List<CereusFirebase>? cereusPlants;
  String error = "";

  @override
  void initState() {
    super.initState();
    fireData = FirestoreData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 10, 19),
        title: const Text(
          'Cereus',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.black, 
      body: FutureBuilder(
        future: fireData!.getPlants(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  _buildPlantTile(snapshot.data![index]),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Text("Cannot fetch data due to error");
          }
        },
      ),
    );
  }

  Widget _buildPlantTile(CereusFirebase plant) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "ALL ABOUT THIS CEREUS CACTI",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(plant.imageurl),
                fit: BoxFit.cover,
              ),
            ),
            width: 300,
            height: 300,
          ),
        ),
        // const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            plant.scientificname,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        // const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            plant.description,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Local Name: ${plant.localname}',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Family: ${plant.family}',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Kingdom: ${plant.kingdom}',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
