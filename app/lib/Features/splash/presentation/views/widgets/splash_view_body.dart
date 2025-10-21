import 'package:app/Features/auth/presentation/views/logn_in_view.dart';
import 'package:app/Features/home/presentation/views/home_screen.dart';
import 'package:app/Features/onboarding/presentation/views/on%20boarding%20screen.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/shared_prefrences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  delayFunction() async {
    bool check = SharedPrefs.getBool("IsSeen");
    bool isLogin = SharedPrefs.getBool("isLogin");
    if (check) {
      if(isLogin){
        await Future.delayed(const Duration(seconds: 3), () {
          Navigator.pushNamed(context, HomeView.routeName);
        });
        return;
      }
      await Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, LogInView.routeName);
      });
      return;
    }

    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, OnBoardingView.routeName);
    });
  }

  @override
  void initState() {
    super.initState();
    delayFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              Assets.imagesPlant,
            ),
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
