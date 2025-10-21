import 'package:app/Features/home/presentation/views/widgets/featured_text_button.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
      child: AspectRatio(
        aspectRatio: 342/158,
        child: Container(
          decoration:  BoxDecoration(
           borderRadius: BorderRadius.circular(4),
            color: Colors.black,
            image: const DecorationImage(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
              image: AssetImage(
                Assets.imagesFeaturedPhotoTest , ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SvgPicture.asset(Assets.imagesShapeFeaturedItem , fit: BoxFit.fill,))),
                 Positioned(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Spacer(flex: 2,),
                    Text('عروض العيد' , style: AppTextStyles.regular13.copyWith(color: Colors.white),) , 
                    const Spacer(flex: 2,),

                    Text('خصم 25%' , style: AppTextStyles.bold19.copyWith(color: Colors.white),) ,
                    const Spacer(flex: 1,),

                    const FeaturedTextButton(),
                    const Spacer(flex: 2,)
                    ],
                                     ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}