import 'package:cloud_firestore/cloud_firestore.dart';

//- LEER DATOS DESDE FIRESTORE

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');

  QuerySnapshot queryPeople = await collectionReferencePeople.get();

  queryPeople.docs.forEach((e) {
    people.add(e.data());
  });

  return people;
}

Future<void> addPeople(String name) async {
  await db.collection('people').add({'name': name});
}
