import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActive extends StatelessWidget {
  const InActive({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(img);
  }
}

