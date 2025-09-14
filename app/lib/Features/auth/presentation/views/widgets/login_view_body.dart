import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(txt: 'تسجيل دخول',),
      ],
    );
  }
}
