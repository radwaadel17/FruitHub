import 'package:app/Features/onboarding/presentation/views/widgets/on_boarding_page_view_item.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.pageController,
  });
 final  PageController pageController ;
  
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
         PageViewItem(
          isVisible: pageController.hasClients ? pageController.page!.round() == 0 : false,
            image: Assets.imagesPhoto1,
            bg: Assets.imagesBg1,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  style: AppTextStyles.bold23,
                  'مرحبا بك في',
                ),
                Text(' HUB' , style: AppTextStyles.bold23.copyWith(color: Colors.yellow)),
                 Text('Fruit' , style: AppTextStyles.bold23.copyWith(color: ColorsApp.primaryColor)),

              ],
            )),
        PageViewItem(
            isVisible: pageController.hasClients ? pageController.page!.round() != 1 : false,
            image: Assets.imagesPhoto2,
            bg: Assets.imagesBg2,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ابحث وتسوق' , style: AppTextStyles.bold23,),
              ],
            )),
      ],
    );
  }
}
