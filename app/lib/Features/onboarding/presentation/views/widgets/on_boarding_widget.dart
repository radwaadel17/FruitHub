import 'package:app/Features/onboarding/presentation/views/widgets/custom_page_view.dart';
import 'package:app/core/utils/colors.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child:  CustomPageView(),
        ),
        DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: ColorsApp.primaryColor,
              color: ColorsApp.primaryColor.withOpacity(0.5),
            )),
        SizedBox(height: 24,),
        CustomButton(),
      ],
    );
  }
}

