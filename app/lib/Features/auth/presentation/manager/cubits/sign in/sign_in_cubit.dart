import 'package:app/Features/auth/domain/repos/repo.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign%20in/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo ;

  Future<void> signIn({required String email , required String password}) async {
    emit(SignInLoading());
    final res = await authRepo.signIn(email: email, password: password);
    res.fold((faluire) {
      emit(SignInFailure(faluire.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity));
    });    

  }
  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    final res = await authRepo.signInWithGoogle();
    res.fold((faluire) {
      emit(SignInFailure(faluire.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity));
    });
  }
  Future<void> signInWithFacebook() async {
    emit(SignInLoading());
    final res = await authRepo.signInWithFacebook();
    res.fold((faluire) {
      emit(SignInFailure(faluire.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity));
    });
  }
}