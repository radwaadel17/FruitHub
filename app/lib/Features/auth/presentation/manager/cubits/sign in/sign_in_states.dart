import 'package:app/Features/auth/domain/entities/user_entity.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final UserEntity userEntity;
  SignInSuccess(this.userEntity);
}

class SignInFailure extends SignInState {
  final String error;

  SignInFailure(this.error);
}
