import 'package:firebase_auth/firebase_auth.dart';

abstract class Faluire{
   final String message;
   Faluire(this.message);

}
 class ServerFaluire extends Faluire{
  ServerFaluire(super.message);

  factory ServerFaluire.fromFirebaseException(FirebaseException e){

    switch (e.code){
      case 'weak-password':
        return ServerFaluire('The password provided is too weak.');
      case 'email-already-in-use':
        return ServerFaluire('This email address is already in use.');
      case 'invalid-email':
        return ServerFaluire('Your email address appears to be malformed.');
      case 'wrong-password':
        return ServerFaluire('Your password is wrong.');
      case 'user-not-found':
        return ServerFaluire("User with this email doesn't exist.");
      case 'user-disabled':
        return ServerFaluire('User with this email has been disabled.');
      case 'too-many-requests':
        return ServerFaluire('Too many requests. Try again later.');
      case 'operation-not-allowed':
        return ServerFaluire('Signing in with Email and Password is not enabled.');
      default:
        return ServerFaluire('An undefined Error happened , try again later.');
    }
  }
 }