import 'package:app/Features/auth/domain/entities/user_entity.dart';

abstract class SignUpStates {}

class IntialSignUpState extends SignUpStates {}

class LoadingSignUpState extends SignUpStates {}

class SucsessSignUpState extends SignUpStates {
  final UserEntity userEntity;
  SucsessSignUpState(this.userEntity);
}

class FaluireSignUpState extends SignUpStates {
  final String msg;
  FaluireSignUpState(this.msg);
}
