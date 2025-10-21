import 'package:app/Features/home/presentation/views/widgets/Featured_item.dart';
import 'package:app/Features/home/presentation/views/widgets/custom_search_text_widget.dart';
import 'package:app/Features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HomeViewAppbar(),
        ),
        SliverToBoxAdapter(
          child: CustomSearchTextWidget(),
        ),
        // Other slivers can be added here
        SliverToBoxAdapter(
          child: FeaturedItem(),
        )
      ],
    );
  }
}




