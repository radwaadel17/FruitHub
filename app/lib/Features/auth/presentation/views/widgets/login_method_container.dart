import 'package:app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInMethodContainer extends StatelessWidget {
  const LogInMethodContainer(
      {super.key, required this.txt, required this.urlImage});
  final String txt;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: TextButton(
          style: TextButton.styleFrom(
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                color: Color(0xffDDDFDF),
                width: 1,
              ),
            ),
          ),
          onPressed: () {},
          child: ListTile(
            visualDensity: const VisualDensity(
              vertical: VisualDensity.minimumDensity,
            ),
            leading: SvgPicture.asset(urlImage),
            title: Text(
              txt,
              style: AppTextStyles.semiBold16,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
