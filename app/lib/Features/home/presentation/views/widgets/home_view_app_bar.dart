import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewAppbar extends StatelessWidget {
  const HomeViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesProfileImage),
        title: Text(
          'صباح الخير !..',
          style: AppTextStyles.regular16.copyWith(color: ColorsApp.textColor),
        ),
        subtitle: const Text('أحمد محمد', style: AppTextStyles.bold16),
        trailing: SizedBox(child: SvgPicture.asset(Assets.imagesNotification)),
      ),
    );
  }
}
