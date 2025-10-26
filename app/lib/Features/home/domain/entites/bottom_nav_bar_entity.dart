import 'package:app/core/utils/appIamges.dart';

class BottomNavBarEntity {
  final String activeImg;
  final String inactiveImg;
  final String title;
  BottomNavBarEntity(
      {required this.activeImg,
      required this.inactiveImg,
      required this.title});
 
}
 List<BottomNavBarEntity> bottomNavBarItems = [
    BottomNavBarEntity(
        activeImg: Assets.imagesHome,
        inactiveImg: Assets.imagesHomeOutline,
        title: 'الرئيسية'),
    BottomNavBarEntity(
        activeImg: Assets.imagesElement3,
        inactiveImg: Assets.imagesElement3Outline,
        title: "المنتجات"),
    BottomNavBarEntity(
        activeImg: Assets.imagesShoppingCart,
        inactiveImg: Assets.imagesShoppingCartOutline,
        title: "سلة التسوق"),
    BottomNavBarEntity(
        activeImg: Assets.imagesUser,
        inactiveImg: Assets.imagesUserOutline,
        title: "حسابي"),
  ];