import 'package:firebase_auth/firebase_auth.dart';

abstract class RemoteDataSource {
  Future<UserCredential> signUp({
    required String email,
    required String password,
  });
}

class RemoteDataSourceImp implements RemoteDataSource {
  

  RemoteDataSourceImp(this.firebaseAuth);
  final FirebaseAuth firebaseAuth;

  @override
  Future<UserCredential> signUp({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
