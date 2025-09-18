import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class OrTxt extends StatelessWidget {
  const OrTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Expanded(child: Divider(thickness: 1, color :ColorsApp.textColor)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "أو",
              style: AppTextStyles.semiBold16,
            ),
          ),
          Expanded(child: Divider(thickness: 1, color: ColorsApp.textColor)),
        ],
      ),
    );
  }
}
