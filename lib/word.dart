import 'package:cloud_firestore/cloud_firestore.dart';

class DataModel {
  final String? word;
  final String? url;

  DataModel({this.word, this.url});

  //Create a method to convert QuerySnapshot from Cloud Firestore to a list of objects of this DataModel
  //This function in essential to the working of FirestoreSearchScaffold

  List<DataModel> dataListFromSnapshot(QuerySnapshot querySnapshot) {
    return querySnapshot.docs.map((snapshot) {
      final Map<String, dynamic> dataMap =
          snapshot.data() as Map<String, dynamic>;

      return DataModel(word: dataMap['word'], url: dataMap['url']);
    }).toList();
  }
}
