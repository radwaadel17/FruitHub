import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

 class UserModel  extends UserEntity{
  UserModel({
    required super.uid,
    required super.email,
    required super.name,
  });
  factory UserModel.fromJson(UserCredential user){
    return UserModel(
      uid: user.user?.uid ?? '',
      email: user.user?.email ?? '',
      name: user.user?.displayName ?? '',
    );
  }

}