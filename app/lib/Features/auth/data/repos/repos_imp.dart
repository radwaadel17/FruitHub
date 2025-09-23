import 'package:app/Features/auth/domain/entities/user_entity.dart';
import 'package:app/Features/auth/domain/repos/repo.dart';
import 'package:app/core/errors/faluire_class.dart';
import 'package:dartz/dartz.dart';

class ReposImp  extends AuthRepo{
  @override
  Future<Either<Faluire, UserEntity>> signUp({required String email, required String password, required String name}) {
    
    throw UnimplementedError();
  }

}