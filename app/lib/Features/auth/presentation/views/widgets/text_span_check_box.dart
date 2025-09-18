import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class TextSpanCheckBoc extends StatelessWidget {
  const TextSpanCheckBoc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text.rich(
        TextSpan(
          text: 'من خلال إنشاء حساب ، فإنك توافق على',
          style: AppTextStyles.semiBold16.copyWith(color: ColorsApp.textColor),
          children: [
            TextSpan(
              text: ' الشروط والاحكام الخاصه بنا ' ,
              style: AppTextStyles.semiBold16.copyWith(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

