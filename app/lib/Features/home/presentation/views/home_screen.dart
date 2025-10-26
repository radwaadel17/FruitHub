import 'package:app/Features/home/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: HomeViewBody(),
    );
  }
}

