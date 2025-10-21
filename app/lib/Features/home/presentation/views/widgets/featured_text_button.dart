import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class FeaturedTextButton extends StatelessWidget {
  const FeaturedTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
    
        minimumSize: const Size(116, 32),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        )
      ),
      onPressed: (){}, 
    
    child: Text('تسوق الان' , style: AppTextStyles.bold13.copyWith(color: ColorsApp.primaryColor ,),));
  }
}