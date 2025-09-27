import 'package:app/Features/auth/presentation/manager/cubits/sign%20up/sign_up_cubit.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign%20up/sign_up_states.dart';
import 'package:app/Features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:app/core/functions/error_bar_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerSignUp extends StatelessWidget {
  const BlocConsumerSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<SignUpCubit, SignUpStates>(
          listener: (context, state) {
            if(state is SucsessSignUpState){
              // Navigator.pushNamed(context, HomeView.routeName);
            } else if(state is FaluireSignUpState){
              buildErrorBar(context, state.msg);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is LoadingSignUpState ? true : false,
              child: const SignUpViewBody());
          },
        ),
      );
  }

}