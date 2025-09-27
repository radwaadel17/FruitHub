import 'package:app/Features/auth/data/repos/repos_imp.dart';
import 'package:app/Features/auth/presentation/manager/cubits/sign%20in/sign_in_cubit.dart';
import 'package:app/Features/auth/presentation/views/widgets/bloc_consumer_sign_in.dart';
import 'package:app/core/Services/Service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});
  static const String routeName = '/log_in_view';

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  void initState() {
    //SharedPrefs.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepoImp>()),
      child: const Scaffold(
        body: BlocConsumerSignIn(),
      ),
    );
  }
}
