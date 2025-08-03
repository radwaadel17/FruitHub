import 'package:app/Features/onboarding/presentation/views/on%20boarding%20screen.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void dalayFunction() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, OnBoardingView.routeName);
    });
  }

  @override
  void initState() {
    super.initState();
    dalayFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesSplash),
        SvgPicture.asset(
          Assets.imagesSmall,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
