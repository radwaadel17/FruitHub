import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class TextHeaderRow extends StatelessWidget {
  const TextHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           const Text('الأكثر مبيعًا' , style: AppTextStyles.bold16, ) , 
           GestureDetector(
            onTap: (){},
            child: Text('المزيد' , style: AppTextStyles.regular13.copyWith(color: ColorsApp.textColor),))
        ],
      ),
    );

  }
}