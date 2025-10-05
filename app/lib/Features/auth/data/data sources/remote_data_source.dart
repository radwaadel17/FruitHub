import 'package:app/Features/auth/data/data%20sources/data_base_users.dart';
import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class RemoteDataSource {
  Future<UserCredential> signUp({
    required String email,
    required String password,
  });
  Future<UserCredential> signIn({
    required String email,
    required String password,
  });
  Future<UserCredential> signInWithGoogle();
  Future<UserCredential> signInWithFacebook();
  Future<void> deleteUser();
  Future<UserEntity> getCurrentUser({required String uid , required String path});
  
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

  @override
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<void> deleteUser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    await user.delete();
  }
  
  @override
  Future<UserEntity> getCurrentUser({required String uid, required String path})async {
   DataBaseUsers dataBaseUsers = FireStoreDataBase() ;
   UserEntity user = await dataBaseUsers.getData(uid: uid, path: path).then((value) => UserEntity.fromjson(value)) ;
   return user;
  }
}
