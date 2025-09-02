import 'package:app/Features/onboarding/presentation/views/widgets/custom_page_view.dart';
import 'package:app/core/utils/colors.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController ;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    }); 
    super.initState();
  }

@override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(
          child:  CustomPageView(pageController:pageController,),
        ),
        DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: ColorsApp.primaryColor,
              color:currentPage == 1 ?  ColorsApp.primaryColor :  ColorsApp.primaryColor.withOpacity(0.5) ,
            )),
        const SizedBox(height: 24,),
         Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage == 1,
          child: const CustomButton()),
      ],
    );
  }
}

