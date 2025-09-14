import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.hintText, this.textInputType, this.suffixIcon});
  final String? hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: AppTextStyles.regular13.copyWith(
              fontWeight: FontWeight.bold, color: ColorsApp.textColor),
          filled: true,
          fillColor: ColorsApp.textFieldColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: ColorsApp.textColor.withOpacity(0.3),
                width: 1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: ColorsApp.textColor.withOpacity(0.3),
                width: 1,
              )),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          // suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
