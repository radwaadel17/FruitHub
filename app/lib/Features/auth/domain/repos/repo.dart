import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:app/core/errors/faluire_class.dart';
import 'package:dartz/dartz.dart';
abstract class AuthRepo {
  Future<Either<Faluire, UserEntity>> signUp({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Faluire, UserEntity>> signIn({
    required String email,
    required String password,
  });
  Future<Either<Faluire, UserEntity>> signInWithGoogle();
  Future<Either<Faluire, UserEntity>> signInWithFacebook();
  Future<void> addUserToDataBase({
    required UserEntity user,
  });
  Future<void> deleteUser();
  Future<UserEntity> getCurrentUser({required String uid , required String path});
}