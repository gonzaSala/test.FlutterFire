import 'package:cloud_firestore/cloud_firestore.dart';

//- LEER DATOS DESDE FIRESTORE

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');

  QuerySnapshot querySnapshot = await collectionReferencePeople.get();

  for (var doc in querySnapshot.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      'name ': data['name'],
      'uID': doc.id,
    };

    people.add(person);
  }
  return people;
}

Future<void> addPeople(String name) async {
  await db.collection('people').add({'name': name});
}

Future<void> updatePeople(String uID, String newName) async {
  await db.collection('people').doc(uID).set({'name': newName});
}
