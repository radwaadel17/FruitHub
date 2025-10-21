import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextWidget extends StatelessWidget {
  const CustomSearchTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
         decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
         ),
        child: TextField(
            decoration: InputDecoration(
          hintText: 'ابحث عن.......',
          hintStyle: AppTextStyles.regular13.copyWith(color: ColorsApp.textColor),
          prefixIcon: const Icon(Icons.search , color: ColorsApp.primaryColor,),
          suffixIcon:  SizedBox(
            height: 25,
            width: 25,
            child: Center(child: SvgPicture.asset(Assets.imagesSetting,))),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.white,
        )),
      
      ),
    );
  }
}
