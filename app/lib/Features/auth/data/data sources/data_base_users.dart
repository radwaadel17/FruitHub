import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DataBaseUsers {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId , 
  });
   Future<Map<String , dynamic >>getData({required String uid , required String path});
   Future<bool> checkIfDataExists ({required String uid, required String path}) ;
}

class FireStoreDataBase implements DataBaseUsers {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({required String path, required Map<String, dynamic> data, String? documentId}) {
    if(documentId == null){
      return firestore.collection(path).add(data);
    }else{
      return firestore.collection(path).doc(documentId).set(data);
    }
  }
  
  @override
  Future<Map<String , dynamic>> getData({required String uid, required String path})async {
    var res = await firestore.collection(path).doc(uid).get() ;
    return res.data()! ;
}
@override
Future<bool> checkIfDataExists ({required String uid, required String path}) async {
    var res = await firestore.collection(path).doc(uid).get() ;
    return res.exists ;
  }
}