import 'package:app/Features/auth/presentation/manager/cubits/sign%20in/sign_in_cubit.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign%20in/sign_in_states.dart';
import 'package:app/Features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:app/Features/home/presentation/views/home_screen.dart';
import 'package:app/core/functions/error_bar_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerSignIn extends StatelessWidget {
  const BlocConsumerSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
          buildSuccessBar(context, "تم تسجيل الدخول بنجاح");
        } else if (state is SignInFailure) {
          buildErrorBar(context, state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignInLoading ? true : false,
            child: const LoginViewBody());
      },
    );
  }
}
