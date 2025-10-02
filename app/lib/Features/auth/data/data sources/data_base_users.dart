import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DataBaseUsers {
  Future<void> addUser({
    required String path,
    required Map<String, dynamic> data,
  });
}

class FireStoreDataBase implements DataBaseUsers {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }
}
