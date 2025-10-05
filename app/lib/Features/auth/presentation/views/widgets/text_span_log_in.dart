import 'package:app/Features/auth/presentation/views/logn_in_view.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanLogIn extends StatelessWidget {
  const TextSpanLogIn({
    super.key,
  });
 

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan (
      text: 'تمتلك حساب بالفعل؟ ' , 
      style: AppTextStyles.semiBold16.copyWith(color: ColorsApp.textColor),
      children: [
        TextSpan(
          recognizer: TapGestureRecognizer()..onTap = (){
            Navigator.pushNamed(context, LogInView.routeName);
          },
          text: 'تسجيل الدخول' , 
          style: AppTextStyles.semiBold16.copyWith(color: ColorsApp.primaryColor),
        )
      ]
    )
    );
  }
}