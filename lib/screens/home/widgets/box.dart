import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Ring extends StatelessWidget {
  const Ring({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: MyColors.shades0),
    );
  }
}