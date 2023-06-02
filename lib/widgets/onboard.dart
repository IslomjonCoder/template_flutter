import 'package:flutter/material.dart';
import 'package:untitled20/models/models.dart';
import 'package:untitled20/widgets/dot.dart';
import 'package:untitled20/utils/colors.dart';
import 'package:untitled20/utils/icons.dart';

class OnBoard1 extends StatelessWidget {
  String title;
  String subtitle;
  String url;
  int index;

  OnBoard1(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Expanded(
          flex: 10,
          child: Image.asset(
            url,
            height: height * (288 / 812),
            width: width * (300 / 375),
          ),
        ),
        Spacer(),
        Text(title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              color: MyColors.black,
              fontSize: 24.0,
            )),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * (191 / 375) / 2, vertical: 18),
          child: Text(
            subtitle,
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: MyColors.c_87898E,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < Data.views.length; i++)
              (i == index) ? Dot(isActive: true) : Dot(isActive: false)
          ],
        ),
        Spacer(),
      ],
    );
  }
}
