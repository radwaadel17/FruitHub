import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox( 
        height: 54,
        width: double.infinity ,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: ColorsApp.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: (){}, child: const Text
        
        ('ابدا الان ', style: TextStyle(fontSize: 21 , color: Colors.white),)),
      ),
    );
  }
}