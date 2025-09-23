import 'package:firebase_auth/firebase_auth.dart';

abstract class RemoteDataSource {
  Future<UserCredential> signUp({
    required String email,
    required String password,
  });
}

class RemoteDataSourceImp implements RemoteDataSource {
  final FirebaseAuth firebaseAuth;

  RemoteDataSourceImp({required this.firebaseAuth});

  @override
  Future<UserCredential> signUp({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
