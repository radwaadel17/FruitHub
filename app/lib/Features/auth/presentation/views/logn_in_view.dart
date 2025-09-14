import 'package:app/Features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}