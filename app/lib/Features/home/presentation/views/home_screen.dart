import 'package:app/Features/home/presentation/views/widgets/best_sellers_body.dart';
import 'package:app/core/widegets/custom_navigation_bar.dart';
import 'package:app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

List<Widget> pages = const [
  HomeViewBody(),
  BestSellerBody(),
];
int isSelected = 0;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        updateBool: (idx) {
          setState(() {
            isSelected = idx;
          });
        },
      ),
      body: IndexedStack(
        index: isSelected,
        children: pages,
      ),
    );
  }
}
