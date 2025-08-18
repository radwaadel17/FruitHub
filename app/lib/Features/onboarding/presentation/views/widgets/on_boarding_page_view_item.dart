import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.bg,
      required this.subTitle,
      required this.title});
  final String image;
  final String bg;
  final String subTitle;
  final Widget title;

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
           const Positioned(
              right: 0,
              top:0 ,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('تخط' , style: TextStyle(fontSize: 21),),
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
        child: Text(subTitle , textAlign: TextAlign.center,),
      ),
    ]);
  }
}
