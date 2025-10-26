import 'package:app/Features/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:app/Features/home/presentation/views/widgets/bottom_nav_bar_select.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int  isSelected = 0 ; 
   int flexCount = 1 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, -3),
          ),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Row(
        children: bottomNavBarItems.asMap().entries.map((entry) {
          flexCount = isSelected == entry.key ? 2 : 1 ;
          int idx = entry.key;
          BottomNavBarEntity bottomNavBarEntity = entry.value;
          return Expanded(
            flex: flexCount,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isSelected = idx ;
                });
              },
              child: BottomNavigationBarSelect(
                isSelected: isSelected == idx,
                bottomNavBarEntity: bottomNavBarEntity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
