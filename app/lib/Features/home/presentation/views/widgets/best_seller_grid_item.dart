import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestSellerGridItem extends StatelessWidget {
  const BestSellerGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // ignore: use_full_hex_values_for_flutter_colors
        color: const Color(0xffbf3f5f7),
        image: const DecorationImage(
          image: AssetImage(
            Assets.imagesGridItemS,
          ),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 10,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'فراولة',
                      style: AppTextStyles.semiBold13,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          '30جنية /',
                          style: AppTextStyles.bold13
                              .copyWith(color: const Color(0xffF4A91F)),
                        ),
                        Text(' للكيلو',
                            style: AppTextStyles.regular13.copyWith(
                              color: const Color(0xffF4A91F),
                            ))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 20, left: 10, child: SvgPicture.asset(Assets.imagesAdd)),
          Positioned(
              top: 10, right: 10, child: SvgPicture.asset(Assets.imagesHeart)),
        ],
      ),
    );
  }
}
