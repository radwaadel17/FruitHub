import 'dart:developer';
import 'package:app/Features/auth/data/data%20sources/data_base_users.dart';
import 'package:app/Features/auth/data/data%20sources/remote_data_source.dart';
import 'package:app/Features/auth/data/models/user_model.dart';
import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:app/Features/auth/domain/repos/repo.dart';
import 'package:app/Features/home/presentation/views/home_screen.dart';
import 'package:app/core/errors/faluire_class.dart';
import 'package:app/core/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepoImp extends AuthRepo {
  RemoteDataSourceImp remoteDataSourceImp;
  DataBaseUsers dataBaseUsers;
  AuthRepoImp(this.remoteDataSourceImp, this.dataBaseUsers);
  @override
  Future<Either<Faluire, UserEntity>> signUp(
      {required String email,
      required String password,
      required String name}) async {
    UserCredential? res;
    try {
      res = await remoteDataSourceImp.signUp(email: email, password: password);
      var user = UserModel.fromFirebase(res);
      user.name = name;
      await addUserToDataBase(user: user);
      await getCurrentUser(uid: user.uid, path: path);
      return Right(user);
    } catch (e) {
      if (res != null) {
        await deleteUser();
      }
      if (e is FirebaseException) {
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        if (res != null) {
          await deleteUser();
        }
        log(e.toString());

        return Left(ServerFaluire('حدث خطأ غير معروف , حاول مرة اخرى لاحقا'));
      }
    }
  }

  @override
  Future<Either<Faluire, UserEntity>> signIn(
      {required String email, required String password}) async {
    try {
      final res =
          await remoteDataSourceImp.signIn(email: email, password: password);
      UserEntity userInfo = await remoteDataSourceImp.getCurrentUser(
          uid: res.user!.uid, path: path);

      log(userInfo.name);
      log(userInfo.email);
      log(userInfo.uid);
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        log(e.toString());
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        log(e.toString());
        return Left(ServerFaluire('حدث خطأ غير معروف , حاول مرة اخرى لاحقا'));
      }
    }
  }

  @override
  Future<Either<Faluire, UserEntity>> signInWithGoogle() async {
    UserCredential? res;
    try {
      res = await remoteDataSourceImp.signInWithGoogle();

      var user = UserModel.fromFirebase(res);
      bool userExists = await checkIfUserExists(user: user);
      if (userExists == true) {
        await getCurrentUser(uid: user.uid, path: path);
      } else {
        await addUserToDataBase(user: user);
      }
      return Right(UserModel.fromFirebase(res));
    } catch (e) {
      if (e is FirebaseException) {
        if (res != null) {
          await deleteUser();
        }
        log(e.toString());
        return Left(ServerFaluire.fromFirebaseException(e));
      } else {
        if (res != null) {
          await deleteUser();
        }
        log(e.toString());
        return Left(ServerFaluire('حدث خطأ غير معروف , حاول مرة اخرى لاحقا'));
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
        return Left(ServerFaluire('حدث خطأ غير معروف , حاول مرة اخرى لاحقا'));
      }
    }
  }

  @override
  Future<void> addUserToDataBase({required UserEntity user}) async {
    await dataBaseUsers.addData(
        path: path, data: user.toMap(), documentId: user.uid);
  }

  @override
  Future<void> deleteUser() async {
    await remoteDataSourceImp.deleteUser();
  }

  @override
  Future<UserEntity> getCurrentUser(
      {required String uid, required String path}) async {
    var res = await dataBaseUsers.getData(uid: uid, path: path);
    return UserEntity.fromjson(res);
  }

  @override
  Future<bool> checkIfUserExists({required UserEntity user}) async {
    bool res = await dataBaseUsers.checkIfDataExists(uid: user.uid, path: path);
    return res;
  }
}
