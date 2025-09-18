import 'package:app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'نسيت كلمة المرور؟',
              style: AppTextStyles.semiBold13
                  .copyWith(color: const Color(0xff2D9F5D)),
            )
          ],
        ),
      ),
    );
  }
}
