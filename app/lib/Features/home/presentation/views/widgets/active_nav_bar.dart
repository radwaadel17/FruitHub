import 'package:app/Features/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Active extends StatelessWidget {
  const Active({super.key, required this.bottomNavBarEntity});
  final BottomNavBarEntity bottomNavBarEntity ; 
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ColorsApp.textFieldColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ColorsApp.primaryColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  bottomNavBarEntity.activeImg,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 4,),
            Text(
              bottomNavBarEntity.title,
              style: AppTextStyles.regular11.copyWith(color: ColorsApp.primaryColor)  ,
            ),
          ],
        ),
      ),
    );
  }
}

