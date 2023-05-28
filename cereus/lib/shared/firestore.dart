import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cereusfirebase/models/firebaseplant.dart';
import 'dart:async';

class FirestoreData {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List<CereusFirebase>?> getPlants() async {
    try {
      CollectionReference plantCollection = db.collection("plantsDetails");
      List<CereusFirebase> myPlants = List.empty(growable: true);

      QuerySnapshot snapshot = await plantCollection.get();
      List<QueryDocumentSnapshot> plantList = snapshot.docs;

      for (DocumentSnapshot snap in plantList) {
        CereusFirebase temp = CereusFirebase(
            imageurl: snap.get("imageurl"),
            scientificname: snap.get("scientificname"),
            localname: snap.get("localname"),
            description: snap.get("Description"),
            family: snap.get("Family"),
            kingdom: snap.get("Kingdom"));
        myPlants.add(temp);
      }
      return myPlants;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
