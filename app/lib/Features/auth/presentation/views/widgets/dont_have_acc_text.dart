import 'package:app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' لا تمتلك حساب؟' , style: AppTextStyles.semiBold16.copyWith(color: ColorsApp.textColor),), 
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, SignUpView.routeName);
            },
            child: Text(' قم بإنشاء حساب', style: AppTextStyles.semiBold16.copyWith(color: ColorsApp.primaryColor),))  
        ],
      ),
    );
  }
}