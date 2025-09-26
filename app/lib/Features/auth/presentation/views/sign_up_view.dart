import 'package:app/Features/auth/data/repos/repos_imp.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign_up_cubit.dart';
import 'package:app/Features/auth/presentation/views/widgets/bloc_consumer_sign_up.dart';
import 'package:app/core/Services/Service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static const String routeName = 'SignUpView';

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepoImp>()),
      child: const BlocConsumerSignUp()
    );
  }
}

