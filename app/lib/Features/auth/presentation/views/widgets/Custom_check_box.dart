import 'package:app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, required this.returnValue});
  final void Function(bool returnValue)? returnValue;
  

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       isChecked =! isChecked;
       setState(() {
         widget.returnValue!(isChecked);
       });

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AnimatedContainer(
          width: 24,
          height: 24,
          duration: const Duration(milliseconds: 800),
          decoration: BoxDecoration(
            color: isChecked == true ? ColorsApp.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(8)  , 
            border: Border.all(color: isChecked == true ?  ColorsApp.primaryColor : ColorsApp.textColor , width: 1)
      
          ),
          child: const Icon(Icons.check , color: Colors.white, size: 18,),
          ),
      ),
    );
  }
}