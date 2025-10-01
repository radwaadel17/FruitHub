import 'dart:developer';

import 'package:app/Features/auth/data/data%20sources/remote_data_source.dart';
import 'package:app/Features/auth/data/models/user_model.dart';
import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:app/Features/auth/domain/repos/repo.dart';
import 'package:app/core/errors/faluire_class.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepoImp extends AuthRepo {
  RemoteDataSourceImp remoteDataSourceImp;
  AuthRepoImp(this.remoteDataSourceImp);
  @override
  Future<Either<Faluire, UserEntity>> signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final res =
          await remoteDataSourceImp.signUp(email: email, password: password);
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        log(e.toString());
        return Left(
            ServerFaluire('An undefined Error happened , try again later.'));
      }
    }
  }

  @override
  Future<Either<Faluire, UserEntity>> signIn(
      {required String email, required String password}) async {
    try {
      final res =
          await remoteDataSourceImp.signIn(email: email, password: password);
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        log(e.toString());
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        log(e.toString());
        return Left(
            ServerFaluire('An undefined Error happened , try again later.'));
      }
    }
  }

  @override
  Future<Either<Faluire, UserEntity>> signInWithGoogle() async {
    try {
      final res = await remoteDataSourceImp.signInWithGoogle();
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        log(e.toString());
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        log(e.toString());
        return Left(
            ServerFaluire('An undefined Error happened , try again later.'));
      }
    }
  }

  @override
  Future<Either<Faluire, UserEntity>> signInWithFacebook() async {
    try {
      final res = await remoteDataSourceImp.signInWithFacebook();
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        log(e.toString());
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        log(e.toString());
        return Left(
            ServerFaluire('An undefined Error happened , try again later.'));
      }
    }
  }
}
