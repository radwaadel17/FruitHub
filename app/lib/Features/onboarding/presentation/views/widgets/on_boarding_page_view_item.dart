import 'package:app/Features/auth/presentation/views/logn_in_view.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/shared_prefrences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.bg,
      required this.subTitle,
      required this.title,
      required this.isVisible
      });
  final String image;
  final String bg;
  final String subTitle;
  final Widget title;
  final bool isVisible ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(bg ,fit:  BoxFit.fill,),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: SvgPicture.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            Positioned(
              right: 0,
              top:0 ,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Visibility(
                visible: isVisible,
                child:  GestureDetector(
                  onTap: (){
                    SharedPrefs.setBool("IsSeen", true);
                    Navigator.pushReplacementNamed(context, LogInView.routeName);
                  },
                  child: Text('تخط' , style: AppTextStyles.regular13.copyWith(color: const Color(0xff949D9E)) ))),
             ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 64,
      ),
      title,
      const SizedBox(
        height: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Text(subTitle , textAlign: TextAlign.center, style: AppTextStyles.semiBold13,),
      ),
    ]);
  }
}
