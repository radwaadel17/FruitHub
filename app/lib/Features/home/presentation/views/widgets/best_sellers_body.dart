import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
        children: [
          CustomAppBar(txt: 'الاكثر مبيعا')
        ],
    );
  }
}