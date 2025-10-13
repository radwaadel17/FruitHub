import 'package:app/Features/auth/presentation/views/logn_in_view.dart';
import 'package:app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:app/Features/home/presentation/views/home_screen.dart';
import 'package:app/Features/onboarding/presentation/views/on%20boarding%20screen.dart';
import 'package:app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
        settings: settings,
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (_) => const OnBoardingView(),
        settings: settings,
      );
      case LogInView.routeName:
      return MaterialPageRoute(
        builder: (_) => const LogInView(),
        settings: settings,
      );
      case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignUpView(),
        settings: settings,
      );
      case HomeView.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeView(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Page not found')),
        ),
        settings: settings,
      );
  }
}
