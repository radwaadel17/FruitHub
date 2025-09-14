import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.txt});
  final String txt ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16 ) ,
        child: Row(
          children: [
            SvgPicture.asset(Assets.imagesArrowLeft),
            const Spacer(flex: 1,),
            Text(txt, style: AppTextStyles.bold19,) , 
            const Spacer(flex: 2,),
          ] ,
        ),
      ),
    );
  }
}