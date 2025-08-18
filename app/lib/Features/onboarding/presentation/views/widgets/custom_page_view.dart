import 'package:app/Features/onboarding/presentation/views/widgets/on_boarding_page_view_item.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
         PageViewItem(
            image: Assets.imagesPhoto1,
            bg: Assets.imagesBg1,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبا بك في',
                ),
                Text(' FruitHUB'),
              ],
            )),
        PageViewItem(
            image: Assets.imagesPhoto2,
            bg: Assets.imagesBg2,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ابحث وتسوق'),
              ],
            )),
       
       
             
      ],
    );
  }
}
