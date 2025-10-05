import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DataBaseUsers {
  Future<void> addUser({
    required String path,
    required Map<String, dynamic> data,
  });
   Future<Map<String , dynamic >>getData({required String uid , required String path});
}

class FireStoreDataBase implements DataBaseUsers {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }
  
  @override
  Future<Map<String , dynamic>> getData({required String uid, required String path})async {
    var res = await firestore.collection(path).doc(uid).get() ;
    return res.data()! ;
}
}