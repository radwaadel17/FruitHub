import 'package:app/Features/home/presentation/views/widgets/best_seller_grid_item.dart';
import 'package:flutter/material.dart';

class BestSellerGrid extends StatelessWidget {
  const BestSellerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), 
      sliver: SliverGrid.builder(
        itemCount: 10,
        gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 163 / 214)
      , itemBuilder: (context, index) {
        
        return const BestSellerGridItem();
        
      }),
    );
  }
}