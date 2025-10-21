import 'package:app/Features/home/presentation/views/widgets/Featured_item.dart';
import 'package:flutter/material.dart';

class ListFeautredOffers extends StatelessWidget {
  const ListFeautredOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
    aspectRatio: 342/158 , 
    child: ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const FeaturedItem();
      },
    ),
    );

  }
}


