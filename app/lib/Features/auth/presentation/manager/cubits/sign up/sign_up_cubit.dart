import 'package:app/Features/auth/domain/repos/repo.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign%20up/sign_up_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit(this.authRepo) : super(IntialSignUpState());
  final AuthRepo authRepo;
  Future<void> signUp(
      {required String name,
      required String password,
      required String email}) async {
    emit(LoadingSignUpState());
    final result =
        await authRepo.signUp(name: name, password: password, email: email);
    result.fold((faluire) {
      emit(FaluireSignUpState(faluire.message));
    }, (res) {
      emit(SucsessSignUpState(res));
    });
  }
}
