import 'package:app/Features/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:app/Features/home/presentation/views/widgets/active_nav_bar.dart';
import 'package:app/Features/home/presentation/views/widgets/inactive_nav_bar.dart';
import 'package:flutter/material.dart';



class BottomNavigationBarSelect extends StatelessWidget {
  const BottomNavigationBarSelect({super.key, required this.isSelected, required this.bottomNavBarEntity});
  final bool isSelected ;
  final BottomNavBarEntity bottomNavBarEntity ; 
  @override
  Widget build(BuildContext context) {
    return isSelected == true ?  Active(bottomNavBarEntity: bottomNavBarEntity,) : InActive(img: bottomNavBarEntity.inactiveImg);
  }
}