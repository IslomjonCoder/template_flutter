import 'package:flutter/material.dart';
import 'package:untitled20/utils/colors.dart';

class Dot extends StatelessWidget {
  bool isActive;

  Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isActive ? MyColors.c_407AFF : MyColors.c_DADADA),
    );
  }
}
